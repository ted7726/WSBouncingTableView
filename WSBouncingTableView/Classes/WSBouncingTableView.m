//
//  WSBouncingTableView.m
//  Pods
//
//  Created by WeiSheng Su on 6/21/16.
//
//

#import "WSBouncingTableView.h"
#define kWSContentOffset @"contentOffset"
@interface WSBouncingTableView ()
@property (nonatomic) CGFloat prevOffset;
@property (nonatomic) CGFloat currVelocity;
@property (nonatomic) NSIndexPath *lastIndexPath;
@end

@implementation WSBouncingTableView

- (instancetype)init
{
    if (self = [super init]) {
        [self setup];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        [self setup];
    }
    return self;
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:kWSContentOffset];
}

- (void)setup
{
    [self addObserver:self forKeyPath:kWSContentOffset options:NSKeyValueObservingOptionNew context:nil];
    _stretchDistanceFactor = 1.0f;
    _bouncingDuration = 0.3f;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    if (object==self && [keyPath isEqualToString:kWSContentOffset]) {
        [self contentOffsetDidChange];
    }
}

- (void)contentOffsetDidChange
{
    
    if (self.panGestureRecognizer.state == UIGestureRecognizerStateBegan) {
        CGPoint panLocation = [self.panGestureRecognizer locationInView:self];
        self.lastIndexPath = [self indexPathForRowAtPoint:panLocation];
    }
    CGFloat velocity = roundf(self.contentOffset.y - self.prevOffset);
    self.prevOffset = self.contentOffset.y;
    self.currVelocity = velocity;
    NSInteger count = [[self visibleCells] count];
    for (UITableViewCell *cell in [self visibleCells]) {
        [self setOffset:velocity onCell:cell total:count];
    }
    
}

- (void)setOffset:(CGFloat)offset onCell:(UITableViewCell *)cell total:(NSInteger)total
{
    NSIndexPath *cellIndexPath = [self indexPathForCell:cell];
    
    CGFloat indexDiff = ( cellIndexPath.row - self.lastIndexPath.row );
    CGFloat factor = indexDiff * self.stretchDistanceFactor/ total;
    //    if (ABS(factor)>1) factor = ABS(factor)/factor;
    CGFloat yOffset = offset * factor;
    if (yOffset > 0) {
        if (indexDiff < 0) yOffset = - yOffset;
        cell.layer.transform = CATransform3DMakeTranslation(0, yOffset, 0);
        
        [UIView animateWithDuration:self.bouncingDuration animations:^{
            cell.layer.transform = CATransform3DIdentity;
        }];
    }
}


@end
//
//  WSBouncingTableView.h
//  Pods
//
//  Created by WeiSheng Su on 6/21/16.
//
//

#import <UIKit/UIKit.h>

@interface WSBouncingTableView : UITableView

/**
 Bouncing Distance:
 This property indicates the factor of maximum distance for cells offset
 Default Value is 1.0f
 */
@property (nonatomic) CGFloat stretchDistanceFactor;

/**
 Bouncing Duration(second):
 This property indicates the duration to bounce back to original position
 Default Value is 0.3f second
 */
@property (nonatomic) CGFloat bouncingDuration;

@end

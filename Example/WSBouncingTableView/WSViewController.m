//
//  WSViewController.m
//  WSBouncingTableView
//
//  Created by WeiSheng Su on 06/21/2016.
//  Copyright (c) 2016 WeiSheng Su. All rights reserved.
//

#import "WSViewController.h"
#import <WSBouncingTableView/WSBouncingTableView.h>

#define kWSCellReuseIdentifier @"kWSCellReuseIdentifier"
#define RGB(r, g, b) [UIColor colorWithRed:(float)r / 255.0 green:(float)g / 255.0 blue:(float)b / 255.0 alpha:1.0]

@interface WSViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSArray<UIColor *> *colors;

@end

@implementation WSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colors = @[
                    RGB(220, 20, 45),RGB(255, 51, 58),RGB(255, 82, 13),RGB(26, 197, 103),RGB( 0, 192, 115),RGB( 0, 193, 165),
                    RGB( 0, 129, 242),RGB(20,  90, 255),RGB( 0,  52, 163),RGB( 2,  14, 101),RGB(64,   0, 144),RGB(90,   0, 200)
                    ];
    
    WSBouncingTableView *tableView = [[WSBouncingTableView alloc] initWithFrame:self.view.bounds];
    tableView.bouncingDuration = 0.3f;
    tableView.stretchDistanceFactor = 1.0f;
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kWSCellReuseIdentifier];
    [self.view addSubview:tableView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kWSCellReuseIdentifier];
    [cell setBackgroundColor:self.colors[indexPath.row%self.colors.count]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end

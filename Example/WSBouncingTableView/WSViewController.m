//
//  WSViewController.m
//  WSBouncingTableView
//
//  Created by WeiSheng Su on 06/21/2016.
//  Copyright (c) 2016 WeiSheng Su. All rights reserved.
//

#import "WSViewController.h"
#import <WSBouncingTableView/WSBouncingTableView.h>

@interface WSViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSArray<UIColor *> *colors;

@end

@implementation WSViewController


- (NSArray<UIColor *> *)colors
{
    if (!_colors) {
        _colors = @[
                    [UIColor redColor],
                    [UIColor orangeColor],
                    [UIColor yellowColor],
                    [UIColor greenColor],
                    [UIColor blueColor],
                    [UIColor purpleColor],
                    ];
    }
    return _colors;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    WSBouncingTableView *tableView = [[WSBouncingTableView alloc] initWithFrame:self.view.bounds];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    [self.view addSubview:tableView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    [cell setBackgroundColor:self.colors[indexPath.row%self.colors.count]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}



@end

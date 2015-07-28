//
//  CViewController.m
//  NSNotificationCenter(通知)
//
//  Created by nixinsheng on 15/6/3.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import "CViewController.h"
#import "AViewController.h"
@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//- (void)postNotification:(NSNotification *)notification;
//函数回调
- (IBAction)btnInvokedA:(id)sender {
//    [self postNotification:@"MyNotification"];
    NSDictionary* dic = @{@"name":@"倪新生",@"sex":@"男"};
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"MyNotification" object:@"nixinsheng"];//传一个参数
    [[NSNotificationCenter defaultCenter]postNotificationName:@"MyNotification" object:@"wvqusrtg" userInfo:dic];//传n多个参数
}
@end

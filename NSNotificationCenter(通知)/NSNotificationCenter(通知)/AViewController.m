//
//  AViewController.m
//  NSNotificationCenter(通知)
//
//  Created by nixinsheng on 15/6/3.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
        A,B,C 三个页面，页面从A->B->C 在c页面中调用A页面的print方法
     步骤：
     1、在A页面注册观察者 addObserver
     2、在C页面中发送通知 postNotificationName
     3、在A页面dealloc中移除观察者 removeObserver
     */
    //注册观察者
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(print:) name:@"MyNotification" object:nil];
}
//通知中心(NSNotificationCenter) 通知(NSNotification)
-(void)print:(NSNotification*)obj{
    NSLog(@"A Method Invoked~%@",obj);
    NSLog(@"A Method Invoked~%@",[obj object]);
    NSLog(@"A Method Invoked~%@",obj.userInfo);//字典
    NSDictionary* dicCCome = obj.userInfo;
    NSString* name = [dicCCome objectForKey:@"name"];
        NSString* sex = [dicCCome objectForKey:@"sex"];
    NSLog(@"name:%@,sex:%@",name,sex);
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

- (IBAction)btnBViewController:(id)sender {
    BViewController* bVC = [[BViewController alloc] initWithNibName:@"BViewController" bundle:nil];
    bVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:bVC animated:YES completion:nil];
}
//移除观察者
-(void)dealloc{
    [self removeObserver:self forKeyPath:@"MyNotification"];
}
@end

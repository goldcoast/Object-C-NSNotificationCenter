//
//  BViewController.m
//  NSNotificationCenter(通知)
//
//  Created by nixinsheng on 15/6/3.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"
@interface BViewController ()

@end

@implementation BViewController

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

- (IBAction)btnCViewController:(id)sender {
    CViewController* cVC = [[CViewController alloc] initWithNibName:@"CViewController" bundle:nil];
        cVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:cVC animated:YES completion:nil];
}
@end

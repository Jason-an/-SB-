//
//  DetailViewController.m
//  UI模板
//
//  Created by LHP on 15/5/15.
//  Copyright (c) 2015年 QuickHigh. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (IBAction)backMessage;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)backMessage
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end

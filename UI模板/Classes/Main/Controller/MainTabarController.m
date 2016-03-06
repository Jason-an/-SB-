//
//  MainTabarController.m
//  UI模板
//
//  Created by LHP on 15/5/15.
//  Copyright (c) 2015年 QuickHigh. All rights reserved.
//

#import "MainTabarController.h"
#import "CommonData.h"
@interface MainTabarController ()
@property (nonatomic,strong) CommonData *cdata;
@end

@implementation MainTabarController
#pragma mark - 懒加载公共数据
-(CommonData *)commonData
{
    if (!_cdata)
    {
        _cdata = [[CommonData alloc] init];
    }
    return _cdata;
}

-(void)viewWillAppear:(BOOL)animated
{
    //1.创建各个子Storyboard
    self.cdata = [self commonData];
    //2.获取加载sb所需的原始数据
    NSArray *tabItemArray = [self.cdata mainTabItemsArray];
    //3.创建用于存放sb的控制器的数组
    NSMutableArray *sbArray = [NSMutableArray array];
    //4.从数据中取得每个sb的名字然后加载sb，获取其初始控制器并放入sbArray中
    for (int i=0; i<[tabItemArray count]; i++)
    {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:[tabItemArray[i] valueForKey:@"name"] bundle:nil];
        [sbArray addObject:sb.instantiateInitialViewController];
    }
    //5.将存有sb控制器数据的数组赋值给tabBar的控制器数组
    self.viewControllers = sbArray;
    //6.为每个tabitem加载图片
    for (int i=0; i<[tabItemArray count]; i++)
    {
        UIImage *img =[[UIImage imageNamed:[tabItemArray[i] valueForKey:@"imgName"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage *selimg =[[UIImage imageNamed:[tabItemArray[i] valueForKey:@"selectedImgName"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UITabBarItem *tabItem = [self.tabBar.items objectAtIndex:i];
        tabItem.image = img;
        tabItem.selectedImage = selimg;
    }
}

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

@end

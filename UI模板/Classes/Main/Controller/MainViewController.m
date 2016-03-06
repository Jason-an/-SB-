//
//  MainViewController.m
//  UI模板
//
//  Created by LHP on 15/5/15.
//  Copyright (c) 2015年 QuickHigh. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"
#import "MainTabarController.h"
#import "CommonData.h"

@interface MainViewController ()
@property CommonData *cdata;
- (IBAction)showMainView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMainView
{
    //1.获取appdelegate对象
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    //2.获取页面跳转控制器
    MainTabarController *mtc = [[MainTabarController alloc] init];
    //3.加载各个子Storyboard
    self.cdata = [[CommonData alloc] init];
    //3.1获取加载sb所需的原始数据
    NSArray *tabItemArray = [self.cdata mainTabItemsArray];
    //3.2该数组用于存放sb的控制器
    NSMutableArray *sbArray = [NSMutableArray array];
    //3.3从数据中取得每个sb的名字然后加载sb，获取其可能控制器并放入sbArray中
    for (int i=0; i<[tabItemArray count]; i++)
    {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:[tabItemArray[i] valueForKey:@"name"] bundle:nil];
        [sbArray addObject:sb.instantiateInitialViewController];
    }
    //3.4将存有sb控制器数据的数组赋值给tab的控制器数组
    mtc.viewControllers = sbArray;
    //3.5为每个tabitem加载图片
    for (int i=0; i<[tabItemArray count]; i++)
    {
        UIImage *img =[UIImage imageNamed:[tabItemArray[i] valueForKey:@"imgName"]];
        UIImage *selimg =[UIImage imageNamed:[tabItemArray[i] valueForKey:@"selectedImgName"]];
        UITabBarItem *tabItem = [mtc.tabBar.items objectAtIndex:i];
        tabItem.image = img;
        tabItem.selectedImage = selimg;
    }
    //4.将页面跳转控制器赋值给根控制器对象
    appDelegate.window.rootViewController = mtc;
    [appDelegate.window makeKeyAndVisible];
}
@end

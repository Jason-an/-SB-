//
//  CommonData.m
//  UI模板
//
//  Created by LHP on 15/5/13.
//  Copyright (c) 2015年 QuickHigh. All rights reserved.
//

#import "CommonData.h"

@implementation CommonData
#pragma mark - 设置tabBar加载时需要的sb数据
-(NSArray *)mainTabItemsArray
{
    //首页sb的数据
    NSDictionary *tabItemDict1 = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Home",@"name",
                                  @"tabbar_home_os7",@"imgName",
                                  @"tabbar_home_selected_os7",@"selectedImgName",
                                  nil];
    //消息sb的数据
    NSDictionary *tabItemDict2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Message",@"name",
                                  @"tabbar_message_center_os7",@"imgName",
                                  @"tabbar_message_center_selected_os7",@"selectedImgName",
                                  nil];
    //添加sb的数据
    NSDictionary *tabItemDict3 = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Add",@"name",
                                  @"tabbar_compose_icon_add",@"imgName",
                                  @"tabbar_compose_icon_add_highlighted",@"selectedImgName",
                                  nil];
    //我sb的数据
    NSDictionary *tabItemDict4 = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Profile",@"name",
                                  @"tabbar_profile_os7",@"imgName",
                                  @"tabbar_profile_selected_os7",@"selectedImgName",
                                  nil];
    //广场sb的数据
    NSDictionary *tabItemDict5 = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Discover",@"name",
                                  @"tabbar_discover_os7",@"imgName",
                                  @"tabbar_discover_selected_os7",@"selectedImgName",
                                  nil];
    NSArray *tabItemArray = [NSArray arrayWithObjects:tabItemDict1,tabItemDict2,tabItemDict3,tabItemDict4,tabItemDict5, nil];
    return tabItemArray;
}
@end

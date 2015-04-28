//
//  BaseTabBarController.m
//  examplehezi
//
//  Created by qianfeng on 15/4/28.
//  Copyright (c) 2015年 nss. All rights reserved.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//工具
    UIStoryboard *storyboard1 = [UIStoryboard storyboardWithName:@"Tool" bundle:nil];
// instantiateInitialViewController 取得故事板中,箭头指向的视图控制器
    UINavigationController *toolNavi = [storyboard1 instantiateInitialViewController];
    
//咨询
    
    UINavigationController *newsNavi = [[UIStoryboard storyboardWithName:@"News" bundle:nil]instantiateInitialViewController];
    
//动态
    UINavigationController *dynamicNavi = [[UIStoryboard storyboardWithName:@"Dynamic" bundle:nil]instantiateInitialViewController];
//聊一聊
    UINavigationController *chatNavi = [[UIStoryboard storyboardWithName:@"Chat" bundle:nil]instantiateInitialViewController];
//发现
    UINavigationController *discoveryNavi = [[UIStoryboard storyboardWithName:@"Discovery" bundle:nil]instantiateInitialViewController];

    self.viewControllers = @[toolNavi,newsNavi,dynamicNavi,chatNavi,discoveryNavi];
    
    
    
    
    
    
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

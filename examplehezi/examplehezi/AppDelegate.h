//
//  AppDelegate.h
//  examplehezi
//
//  Created by qianfeng on 15/4/28.
//  Copyright (c) 2015年 nss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "BaseTabBarController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//写到.h的原因是,可以把它当成全部变量,当我们要做某些操作的时候,可以随时使用
@property (nonatomic,strong) BaseTabBarController * tabbarController;

//取全局的简单方式
+ (AppDelegate *)shareDelegate;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end


//
//  UserViewModel.h
//  ReactiveDemo
//
//  Created by Ran on 14-9-11.
//  Copyright (c) 2014年 ran. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;

@interface UserViewModel : NSObject

- (instancetype)initWithUser:(User *)user;

@property (nonatomic, strong, readonly) NSString *userName;
@property (nonatomic, strong, readonly) NSString *userAge;
@property (nonatomic, strong, readonly) NSString *userSex;

@end

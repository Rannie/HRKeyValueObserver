//
//  UserViewModel.m
//  ReactiveDemo
//
//  Created by Ran on 14-9-11.
//  Copyright (c) 2014年 ran. All rights reserved.
//

#import "UserViewModel.h"
#import "User.h"

@interface UserViewModel ()
@property (nonatomic, strong) User *user;
@end

@implementation UserViewModel

- (instancetype)initWithUser:(User *)user
{
    if (self = [super init]) {
        self.user = user;
    }
    return self;
}

- (NSString *)userName
{
    return [NSString stringWithFormat:@"name : %@", self.user.name];
}

- (NSString *)userAge
{
    return [NSString stringWithFormat:@"age : %@ 岁", self.user.age];
}

- (NSString *)userSex
{
    return [NSString stringWithFormat:@"sex : %@", self.user.sex];
}

@end

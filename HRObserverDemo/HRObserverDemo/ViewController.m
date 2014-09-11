//
//  ViewController.m
//  ReactiveDemo
//
//  Created by Ran on 14-9-11.
//  Copyright (c) 2014年 ran. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "UserViewModel.h"
#import "HRKeyValueObserver.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *sexLabel;

@property (nonatomic, strong) User *user;
@property (nonatomic, strong) UserViewModel *userViewModel;
@property (nonatomic, strong) HRKeyValueObserver *observer;

- (IBAction)changeUser:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupUser];
}

- (void)setupUser
{
    _user = [User new];
    _user.name = @"terry";
    _user.age  = @"32";
    _user.sex  = @"man";
    
    self.userViewModel = [[UserViewModel alloc] initWithUser:_user];
//    self.observer = [[HRKeyValueObserver alloc] initWithObject:_user
//                                                   keyPathList:@[@"name", @"age", @"sex"]
//                                                        target:self
//                                                      selector:@selector(updateUserView)];
    NSDictionary *keyPathSelMap = @{@"name": NSStringFromSelector(@selector(refreshNameLabel)),
                                    @"age" : NSStringFromSelector(@selector(refreshAgeLabel)),
                                    @"sex" : NSStringFromSelector(@selector(refreshSexLabel))};
    self.observer = [[HRKeyValueObserver alloc] initWithObject:_user
                                            keyPathSelectorMap:keyPathSelMap
                                                        target:self];
}

- (void)refreshSexLabel
{
    self.sexLabel.text = self.userViewModel.userSex;
}

- (void)refreshNameLabel
{
    self.nameLabel.text = self.userViewModel.userName;
}

- (void)refreshAgeLabel
{
    self.ageLabel.text = self.userViewModel.userAge;
}

- (IBAction)changeUser:(id)sender
{
    self.user.name = [NSString stringWithFormat:@"%@%@", _user.name, @"a"];
    self.user.age = [NSString stringWithFormat:@"%@%@", _user.age, @"1"];
}

@end

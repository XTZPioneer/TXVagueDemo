//
//  TXVagueManager.m
//  VagueDemo
//
//  Created by 张雄 on 2017/7/22.
//  Copyright © 2017年 张雄. All rights reserved.
//

#import "TXVagueManager.h"
#import "TXVague.h"
@implementation TXVagueManager{
    
    TXVague * _vague;
}

+ (instancetype)vagueManager{
    static TXVagueManager * vagueManagerInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        vagueManagerInstance = [[self alloc] init];
    });
    return vagueManagerInstance;
}

- (instancetype)init{
    if (self = [super init]) {
        _vague=[[TXVague alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    }
    return self;
}
/*打开*/
- (void)open{
    [_vague reloadData];
    for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
        if (window.windowLevel == UIWindowLevelNormal) {
            [window addSubview:_vague];
        }
    }
}
/*关闭*/
- (void)close{
    [_vague removeFromSuperview];
}
@end

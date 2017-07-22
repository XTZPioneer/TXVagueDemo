//
//  TXVagueManager.h
//  VagueDemo
//
//  Created by 张雄 on 2017/7/22.
//  Copyright © 2017年 张雄. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TXVagueManager : NSObject
/*模糊管理*/
+ (instancetype)vagueManager;
/*打开*/
- (void)open;
/*关闭*/
- (void)close;
@end

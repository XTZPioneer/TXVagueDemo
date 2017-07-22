# TXVagueDemo
一句代码让你的APP具备和支付宝一样的后台模糊效果

pod 'TXVagueManager', '~> 0.0.3'

#import <TXVagueManager.h>

在AppDelegate中


- (void)applicationDidEnterBackground:(UIApplication *)application {
   //打开模糊效果
  [[TXVagueManager vagueManager] open];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    //关闭模糊效果
    [[TXVagueManager vagueManager] close];
}




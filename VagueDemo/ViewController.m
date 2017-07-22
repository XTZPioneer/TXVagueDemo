//
//  ViewController.m
//  VagueDemo
//
//  Created by 张雄 on 2017/7/22.
//  Copyright © 2017年 张雄. All rights reserved.
//

#import "ViewController.h"
#import "TXVagueManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgImageView.userInteractionEnabled = YES;
    bgImageView.image = [UIImage imageNamed:@"bag"];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, 280, 160, 100)];
    label.backgroundColor = [UIColor clearColor];
    label.text = @"这是一个仿支付宝进入后台后，多任务缩略图模糊效果的demo，模糊程度可以自己调整";
    label.numberOfLines = 0;
    label.font = [UIFont boldSystemFontOfSize:16.0];
    [bgImageView addSubview:label];
    label.textColor=[UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 400, 300, 45)];
    [button setBackgroundColor:[UIColor orangeColor]];
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"弹出框" forState:UIControlStateNormal];
    
    [bgImageView addSubview:button];
    
    [self.view addSubview:bgImageView];
    

    // Do any additional setup after loading the view, typically from a nib.
}
- (void)buttonPressed
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"有弹出框时覆盖效果测试" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

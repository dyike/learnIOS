//
//  ViewController.m
//  UIButton代码创建
//
//  Created by ityike on 2016/12/14.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.1 创建按钮对象
    // UIButton *button = [[UIButton alloc] init];
    //注意事项：设置按钮的类型，只能在初始化的时候设置
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //1.2 设置按钮的类型（报错）
    // button.buttonType = UIButtonTypeInfoDark;
    
    //1.3 设置frame
    button.frame = CGRectMake(0, 100, 340, 150);
    //1.4 设置背景颜色
    //button.backgroundColor = [UIColor redColor];
    [button setBackgroundColor:[UIColor redColor]];
    
    //1.5 设置文字
    // 分状态
   // button.titleLabel.text = @"普通文字";
    [button setTitle:@"普通文字" forState:UIControlStateNormal];
    [button setTitle:@"高亮按钮" forState:UIControlStateHighlighted];
    
    //1.6 设置文字的颜色
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    //1.7 设置文字的阴影颜色
    [button setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    button.titleLabel.shadowOffset = CGSizeMake(3, 2);
    
    // 1.8 设置内容图片
    //[button setImage:[UIImage imageNamed:@"1-1"] forState:UIControlStateNormal];
    //[button setImage:[UIImage imageNamed:@"1-2"] forState:UIControlStateHighlighted];
    
    //button.imageView.backgroundColor = [UIColor purpleColor];
    
    
    // 2.0
    [self.view addSubview:button];
    
    // 非常重要
    /*
     监听按钮的点击
     target：目标 （让谁做事情）
     action: 方法 (做什么事情->方法)
     events: 事件
     */
    //SEL sel = @selector(clickBtn:);
    [button addTarget:self action:@selector(demo) forControlEvents:UIControlEventTouchUpInside];
}

- (void)demo {
    NSLog(@"%s", __func__);
}

- (IBAction)clickBtn:(UIButton *)sender {
    sender.enabled = NO;
}

@end

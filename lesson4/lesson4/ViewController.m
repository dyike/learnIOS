//
//  ViewController.m
//  lesson4
//
//  Created by ityike on 2016/12/5.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


// @property (weak, nonatomic) IBOutlet UIView *redView;

@property (weak, nonatomic) UIView *redView;

@property (weak, nonatomic) UILabel *label;

@end

/**
 尽量使用tag
 tag的性能差
 用多了容易乱
 */

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    // 根据tag拿到对应的view
    UIView *redView = [self.view viewWithTag:1];
    self.redView = redView;
    
    // 1 创建UISwitch对象
    UISwitch *sw = [[UISwitch alloc] init];
    
    // 2 加载控制器的view
    [self.view addSubview:sw];
    
    // 3 创建UISWitch对象
    UISwitch *sw1 = [[UISwitch alloc] init];
    
    // 4 加到红色的view
    [redView addSubview:sw1];
    
    // 5 创建一个选项卡对象
    UISegmentedControl *sg = [[UISegmentedControl alloc] initWithItems:@[@"哈哈哈", @"嘻嘻"]];
    // 6 加到红色的view
    [redView addSubview:sg];
    
    // 7 移除
    [sg removeFromSuperview];
    [sw1 removeFromSuperview];
    
    
    // 创建UILabel对象
    UILabel *label = [[UILabel alloc] init];
    // 设置frame
    label.frame = CGRectMake(100, 100, 100, 60);
    // 设置背景颜色
    label.backgroundColor = [UIColor yellowColor];
    // 添加到view中
    [self.view addSubview:label];
    
    self.label = label;
}

- (IBAction)remove {
    [self.redView removeFromSuperview];
}

- (IBAction)bounds {
    // 改变尺寸
    self.label.bounds = CGRectMake(0, 0, 200, 10);
}

- (IBAction)center {
    // 改变位置
    //self.label.center = CGPointMake(100, 100);
    // 显示在view的最中间
    self.label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
}

- (IBAction)changeframe {
   // 方式1
//    self.label.frame = CGRectMake(200, 100, 200, 160);
    
    // 方式2
    CGRect frame = self.label.frame;
    frame.origin.x += 100;
    frame.origin.y += 100;
    frame.size.width += 100;
    frame.size.height -= 30;
    self.label.frame = frame;
    
}

// 只要控件有父控件，就一定能移除。
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    //[self.view removeFromSuperview];
}


@end

//
//  MainViewController.m
//  lesson2
//
//  Created by ityike on 2016/12/3.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

/*
 判断一个对象是否能连接方法：
 看该对象的类是否继承UIConrol
*/

#import "MainViewController.h"

@interface MainViewController ()

// 已经有强指针指向
@property(nonatomic, weak)IBOutlet UILabel *label;

// 红色按钮
@property(nonatomic, weak)IBOutlet UIButton *redButtion;

@end

@implementation MainViewController

- (IBAction)clickRedButton {
    
//    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor redColor];
    //change text content
    self.label.text = @"I like iOS";
    // change groundcolor
    self.label.backgroundColor = [UIColor blackColor];
    // center
    self.label.textAlignment = NSTextAlignmentCenter;
    // change font size
    self.label.font = [UIFont systemFontOfSize: 20.f];
    // 改变按钮的颜色
    self.redButtion.backgroundColor = [UIColor redColor];
}

- (IBAction)clickGreenButton {
//    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor greenColor];
    self.label.text = @"I am Green Color";
    self.label.backgroundColor = [UIColor redColor];
    // center
    self.label.textAlignment = NSTextAlignmentCenter;
    // change font size
    self.label.font = [UIFont systemFontOfSize: 20.f];
    
}

- (IBAction)clickBlueButton {
//    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor blueColor];
    self.label.text = @"I am Blue Color";
    self.label.backgroundColor = [UIColor greenColor];
    // center
    self.label.textAlignment = NSTextAlignmentCenter;
    // change font size
    self.label.font = [UIFont systemFontOfSize: 30.f];
}

- (IBAction)clickLabale {
    NSLog(@"11111");
}

@end

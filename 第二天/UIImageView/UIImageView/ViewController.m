//
//  ViewController.m
//  UIImageView
//
//  Created by ityike on 2016/12/6.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 1 创建UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] init];
    // 2 设置尺寸
    //imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = self.view.bounds;
    
    // 3 设置背景颜色
    imageView.backgroundColor = [UIColor redColor];
    
    // 4 设置背景图片
    imageView.image = [UIImage imageNamed:@"IMG_3963"];
    
    // 5 设置内容模式
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    // 6 加毛玻璃
    // 6.1 创建UIToolBar对象
    UIToolbar *toolBar = [[UIToolbar alloc] init];
    // 6.2 设置toolBar的frame
    toolBar.frame = imageView.bounds;
    // 6.4 毛玻璃的样色
    toolBar.barStyle = UIBarStyleBlack;
    // 6.5 设置透明度
    toolBar.alpha = 0.8;
    // 6.3 加载到imageView中
    [imageView addSubview:toolBar];
    
    
    // 加载到控制器的view中
    [self.view addSubview:imageView];
}


- (void)test {
    // 1.1 创建UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] init];
    
    // 1.2 设置fram
    imageView.frame = CGRectMake(100, 100, 150, 100);
    
    // 1.3 背景
    imageView.backgroundColor = [UIColor greenColor];
    
    // 1.4 设置图片 (png不需要后缀）
    imageView.image = [UIImage imageNamed:@"IMG_3965"];
    
    // 1.5 设置图片的内容模式
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    // 2.0 加载到控制器的view中
    [self.view addSubview:imageView];
    
    // 裁剪多余的部分
    imageView.clipsToBounds = YES;
}



@end

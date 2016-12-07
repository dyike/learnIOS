//
//  ViewController.m
//  UIImageView的frame设置
//
//  Created by ityike on 2016/12/7.
//  Copyright © 2016年 ityike. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 设置frame的方式
    
    // 方式一：
//    UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.image = [UIImage imageNamed:@"1"];
//    imageView.frame = CGRectMake(100, 100, 300, 682);
    
    //or
//    imageView.frame = (CGRect){{100, 100},{300,682}};
    
    // 方式二：
//    UIImageView *imageView = [[UIImageView alloc] init];
//    // 创建一个UIImage对象
//    UIImage *image = [UIImage imageNamed:@"2"];
//    // 设置frame
//    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
//    // 设置图片
//    imageView.image = image;
    
    // 方式三：
//    UIImage *image = [UIImage imageNamed:@"2"];
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
//    imageView.image = image;
    
    // 方式四：
    // 创建一个UIImageView对象
    // 注意 initWithImage 默认是有尺寸的-->就是图片的尺寸
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2"]];
    
    // 改变位置
//    imageView.center = CGPointMake(200, 150);
    imageView.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    
    [self.view addSubview:imageView];
    
}




@end

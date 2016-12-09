//
//  ViewController.m
//  资源存放
//
//  Created by ityike on 2016/12/8.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

#import "ViewController.h"

/*
 加载图片的方式：
  1. imageNamed
  2. imageWithContentsOfFile:
 
 
  1.加载Assets.xcassets里面的图片：
   》 打包后变成Assets.car
   》 拿不到路径
   》 只能通过imageNamed: 来加载图片
   》 不能通过imageWithContensOfFile 来加载图片
 
  2. 放到项目中的图片
   》 可以取到路径
   》 能通过imageNamed 加载图片
   》 也能通过imageWithContensOfFile 来加载图片
 
*/

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 图片的设置方式
    
    // 方式一：
//    self.imageView.image = [UIImage imageNamed:@"11"];
    
    // 方式二：
    // 路径
    NSString *path = [[NSBundle mainBundle] pathForResource:@"12" ofType:@"JPG"];
    //self.imageView.image = [UIImage imageNamed:path];
    self.imageView.image = [UIImage imageWithContentsOfFile:path];
}


@end

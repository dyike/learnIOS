//
//  ViewController.m
//  lesson3
//
//  Created by ityike on 2016/12/5.
//  Copyright © 2016年 ityike. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 绿色的view
@property (weak, nonatomic) IBOutlet UIView *greenView;

// 数组属性
@property (nonatomic, strong) NSMutableArray *dataArray;


@end

@implementation ViewController


//- (void)loadView {
//    [super loadView];
//    NSLog(@"%s", __func__);
//}


/**
 1. 系统调用
 2. 控制器view加载完毕时候调用
 3. 做控件的初始化， 数据的初始化（懒加载）
 */
- (void)viewDidLoad {
    [super viewDidLoad];
//    NSMutableArray *arr = [NSMutableArray array];
//    for (int i = 0; i < 10000; i++) {
//        UILabel *label = [[UILabel alloc] init];
//        [arr addObject:label];
//    }
//    self.dataArray = arr;
    
    // 1 查看绿色view 的父控件
    NSLog(@"绿色view的父控件：%@---控制器的view：%@", self.greenView.superview, self.view);
    
    // 2 查看绿色view的子控件
    NSLog(@"%@", self.greenView.subviews);
    
    // 3 查看控制器view的子控件
    NSLog(@"%@", self.view.subviews);
    
    // 4 查看控制器view的父控件
    NSLog(@"%@", self.view.superview);  //null, 但是在didappear中会看到父控件是UIWindow
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"ViewDidLoad-----%@", self.view.superview);
}


/**
 1. 系统调用
 2. 当控制器接收到内存警告的时候调用
 3. 去除一些不必要的内存，去除耗时的内存
*/
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

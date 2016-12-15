//
//  ViewController.m
//  综合练习
//
//  Created by ityike on 2016/12/15.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 购物车
@property (weak, nonatomic) IBOutlet UIView *shopCarView;
// 全局下标
@property (nonatomic, assign) NSInteger index;
// 添加按钮
@property (weak, nonatomic) IBOutlet UIButton *addButton;
// 删除按钮
@property (weak, nonatomic) IBOutlet UIButton *removeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 给下标赋值
    self.index = 0;
    // 裁剪多余的部分 不可取
    //self.shopCarView.clipsToBounds = YES;
}

// 添加到购物车
- (IBAction)add:(UIButton *)button {
    /***************1定义一些常亮*****************/
    // 11.总列数
    NSInteger allCols = 3;
    //12 总行数
    NSInteger allRows = 3;
    // 21.商品宽度
    CGFloat width = 80;
    // 22.商品高度
    CGFloat height = 100;
    // 31.水平间距
    CGFloat hMargin = (self.shopCarView.frame.size.width - allCols * width) / (allCols - 1);
    // 32. 垂直间距
    CGFloat vMargin = (self.shopCarView.frame.size.height - allRows * height) / (allRows - 1);
    // 5 设置索引
    NSInteger index = self.shopCarView.subviews.count;
    // 41. 求出X值
    CGFloat x = (hMargin + width) * (index % allCols);
    // 42. 求出Y值
    CGFloat y = (vMargin + height) * (index / allCols);
    
    /***************2创建一个商品*****************/
    // 创建商品的view
    UIView *shopView = [[UIView alloc] init];
    // 设置frame
    shopView.frame = CGRectMake(x, y, width, height);
    // 设置背景颜色
    shopView.backgroundColor = [UIColor greenColor];
    // 添加到购物车view
    [self.shopCarView addSubview:shopView];
    
    
    /***************3设置按钮的状态*****************/
//    if (index == 8) {
//        button.enabled = NO;
//    }
    
    button.enabled = (index != 8);
    
    // 5 设置删除按钮的状态
    self.removeButton.enabled = YES;
    
    
    // 让下标+1
//    self.index += 1;
    
}

// 从购物车中删除
- (IBAction)remove:(UIButton *)button {
    // 1 删除最后一个商品
    UIView *lastShopView = [self.shopCarView.subviews lastObject];
    [lastShopView removeFromSuperview];
    
    // 2 设置索引的值 -1
//    self.index -= 1;
    
    // 3 设置添加按钮的状态
    self.addButton.enabled = YES;
    
    // 4 设置删除按钮的状态
//    if (self.shopCarView.subviews.count == 0) {
//        self.removeButton.enabled = NO;
//    }
    self.removeButton.enabled = !(self.shopCarView.subviews.count == 0);
}


@end

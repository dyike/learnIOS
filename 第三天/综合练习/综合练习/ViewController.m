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
//@property (nonatomic, assign) NSInteger index;
// 添加按钮
@property (weak, nonatomic) IBOutlet UIButton *addButton;
// 删除按钮
@property (weak, nonatomic) IBOutlet UIButton *removeButton;

@property (nonatomic, strong) NSArray *dataArr;

@end

@implementation ViewController
/**
 懒加载作用： 
 1.用到的时候再加载
 2.全局只会加载一次
 3.全局都可以使用
 
 过程：
 1. 重写成员变量的get方法。
 2. 在get方法中判断：是否为空，为空加载数据，不为空，直接返回数据。
 
 */
- (NSArray *)dataArr {
    if (_dataArr == nil) {
        // 加载数据
        self.dataArr = @[
                     @{@"name":@"包1",@"icon":@"11"},
                     @{@"name":@"包2",@"icon":@"22"},
                     @{@"name":@"包3",@"icon":@"33"},
                     @{@"name":@"包4",@"icon":@"44"},
                     @{@"name":@"包5",@"icon":@"55"},
                     @{@"name":@"包6",@"icon":@"66"},
                     @{@"name":@"包7",@"icon":@"77"},
                     @{@"name":@"包8",@"icon":@"88"},
                     @{@"name":@"包9",@"icon":@"99"},
                     ];
    }
    return _dataArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 给下标赋值
//    self.index = 0;
    // 裁剪多余的部分 不可取
    //self.shopCarView.clipsToBounds = YES;
//    NSArray<NSDictionary *> *dataArr = @[
//                                         @{@"name":@"包1",@"icon":@"11"},
//                                         @{@"name":@"包2",@"icon":@"22"},
//                                         @{@"name":@"包3",@"icon":@"33"},
//                                         @{@"name":@"包4",@"icon":@"44"},
//                                         @{@"name":@"包5",@"icon":@"55"},
//                                         @{@"name":@"包6",@"icon":@"66"},
//                                         @{@"name":@"包7",@"icon":@"77"},
//                                         @{@"name":@"包8",@"icon":@"88"},
//                                         @{@"name":@"包9",@"icon":@"99"},
//                                         ];
//    self.dataArr = dataArr;
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
    // 1创建商品的view
    UIView *shopView = [[UIView alloc] init];
    // 2设置frame
    shopView.frame = CGRectMake(x, y, width, height);
    // 3设置背景颜色
    shopView.backgroundColor = [UIColor greenColor];
    // 4添加到购物车view
    [self.shopCarView addSubview:shopView];
    // 5创建商品的UIImageView对象
    UIImageView *iconView = [[UIImageView alloc] init];
    iconView.frame = CGRectMake(0, 0, width, width);
    iconView.backgroundColor = [UIColor blueColor];
    [shopView addSubview:iconView];
    
    
    // 6 创建商品的标题对象
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(0, width, width, height - width);
    titleLabel.backgroundColor = [UIColor yellowColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;   //居中
    [shopView addSubview: titleLabel];
    
    /***************4设置数据*****************/
    // 数值数据
    // 方式一： （不可取，数据都是一样的）
//    iconView.image = [UIImage imageNamed:@"11"];
//    titleLabel.text = @"单件包";
    
    // 方式二：（数组）
//    NSArray<NSString *> *imageNames = @[@"11", @"22",@"33",@"44", @"55", @"66", @"77", @"88", @"99"];
//    NSArray<NSString *> *titleNames = @[@"包1", @"包2", @"包3", @"包4", @"包5", @"包6", @"包7", @"包8", @"包9"];
    
//    iconView.image = [UIImage imageNamed:imageNames[index]];
//    titleLabel.text = titleNames[index];
    
    // 方式三：（数组+字典)
    
    // 懒加载
    /*
    if (self.dataArr == nil) {
        self.dataArr = @[
                         @{@"name":@"包1",@"icon":@"11"},
                         @{@"name":@"包2",@"icon":@"22"},
                         @{@"name":@"包3",@"icon":@"33"},
                         @{@"name":@"包4",@"icon":@"44"},
                         @{@"name":@"包5",@"icon":@"55"},
                         @{@"name":@"包6",@"icon":@"66"},
                         @{@"name":@"包7",@"icon":@"77"},
                         @{@"name":@"包8",@"icon":@"88"},
                         @{@"name":@"包9",@"icon":@"99"},
                         ];
    }
     */
    
    
    // 设置数据
    NSDictionary *dict = self.dataArr[index];
    iconView.image = [UIImage imageNamed:dict[@"icon"]];
    titleLabel.text = dict[@"name"];
    
    
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

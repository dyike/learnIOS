//
//  ViewController.m
//  01-加法计算器
//
//  Created by ityike on 2016/12/6.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *num1TextField;
@property (weak, nonatomic) IBOutlet UITextField *num2TextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)sum {
    // 1 拿到两个字符串
    NSString *num1String = self.num1TextField.text;
    NSString *num2String = self.num1TextField.text;

    // 判断
    if (num1String.length == 0) {
        /*
        // 创建对象
        UIAlertView *alterView = [[UIAlertView alloc] initWithTitle:@"输入有误" message:@"输入第一个值" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
        //
        [alterView show];
         */
        [self showInfo:(@"输入第一个数值")];
        return;
    }
    if (num2String.length == 0) {
        /*
        // 创建对象
        UIAlertView *alterView = [[UIAlertView alloc] initWithTitle:@"输入有误" message:@"输入第二个值" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
        //
        [alterView show];
         */
        [self showInfo:(@"输入第二个数值")];
        return;
    }
    
    // 2 将字符串转换成数值
    NSInteger num1 = [num1String integerValue];
    NSInteger num2 = [num2String integerValue];
    // 3 相加
    NSInteger resultLabel = num1 + num2;
    // 4 显示结果
    self.resultLabel.text = [NSString stringWithFormat:@"%zd", resultLabel];
}


- (void)showInfo: (NSString *)info {
    // 创建对象
    UIAlertView *alterView = [[UIAlertView alloc] initWithTitle:@"输入有误" message:info delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
    //
    [alterView show];
}

@end

//
//  main.m
//  plist文件
//
//  Created by ityike on 2016/12/16.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 数组
//        NSArray *names = @[@"xx", @"yyy", @"zzz"];
//        BOOL flag = [names writeToFile:@"/Users/ityike/Desktop/names.plist" atomically:YES];
//        if (flag) {
//            NSLog(@"写入成功");
//        }
        
        // 字典
//        NSDictionary *person = @{
//                                 @"name": @"ityike",
//                                 @"age" : @22,
//                                 @"height": @175
//                                 };
//        BOOL flag = [person writeToFile:@"/Users/ityike/Desktop/person.plist" atomically:YES];
//        if (flag) {
//            NSLog(@"写入成功");
//        }
        
//        NSArray *persons = @[
//                             @{ @"name": @"ityike", @"age": @22},
//                             @{ @"name": @"it", @"age": @25, @"friends":@[@"dddd", @"www"]}
//                             ];
//        BOOL flag = [persons writeToFile:@"/Users/ityike/Desktop/persons.plist" atomically:YES];
//        if (flag) {
//            NSLog(@"写入成功");
//        }
        
        NSArray *persons = [NSArray arrayWithContentsOfFile:@"/Users/ityike/Desktop/persons.plist"];
        NSLog(@"%@", persons);
        
        
    }
    return 0;
}

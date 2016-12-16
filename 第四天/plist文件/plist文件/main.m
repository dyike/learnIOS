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
        
//        NSArray *persons = [NSArray arrayWithContentsOfFile:@"/Users/ityike/Desktop/persons.plist"];
//        NSLog(@"%@", persons);
        
        NSArray *dataArr = @[
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
        BOOL flag = [dataArr writeToFile:@"/Users/ityike/Desktop/dataArr.plist" atomically:YES];
        if (flag) {
            NSLog(@"写入成功");
        }
        
        
    }
    return 0;
}

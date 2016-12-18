//
//  Person.swift
//  加载百度
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    var age: Int = 0
    
    // 重载构造函数
    // 1 便利构造函数允许返回nil 正常的构造函数一定创建对象 判断给定的参数是否符合条件，
    // 如果不符合，就直接返回nil，不会创建对象，减少内存开销
    // 2 只有 便利构造函数中 self.init 构造当前对象  没有关键字convenience 的构造函数是来负责创建对象。反之用来检查条件
    // 本身不负责创建对象
    // 3 如果要在便利构造函数中，使用当前对象的属性，一定要在 self.init 之后
    convenience init?(name: String, age: Int) {
        if age > 100 {
            return nil
        }
        // 实例化当前对象
        self.init()
        // 执行此self 才允许被访问，才能访问到对象的属性
        self.name = name
    }
 
}

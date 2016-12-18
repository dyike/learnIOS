//
//  Person.swift
//  swift面向对象
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

// NSObject 没有属性，只有一个成员变量'isa'
class Person: NSObject {
    var name: String
    
    // 重写
    override init() {
        print("person init")
        
        name = "ityike"
        
        super.init()
    }
    
    // 重载, 函数名相同，但是参数的个数不同
    // 重载可以给自己的属性从外部设置初始值
    init(name: String) {
        // 参数的name 赋值给 属性name
        self.name = name
        // 调用父类的构造函数
        super.init()
    }
}

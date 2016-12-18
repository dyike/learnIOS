//
//  Person.swift
//  构造函数KVC
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

// 1 定义模型属性的时候，如果是对象，通常都是可选的
// - 在需要的时候创建
// - 避免写构造函数，可以简化代码
// 2 如果是基本的数据类型，不能设置为可选，设置初始值，否则KVC会崩溃
// 3 使用KVC 方法之前，应该先调用super.init()保证对象完成初始化
// 4 如果使用KVC， 设置数值，属性不能是private的

class Person: NSObject {
    // name 属性是可选的 在OC中很多属性是在需要的时候创建
    // 手机内存很宝贵，有些属性并不是一定需要分配空间
    var name: String?
    
    // 给基本数据类型属性初始化
    var age: Int = 0
   
    // 如果是private属性，使用KVC的时候，同样无法设置！
    // 禁止外部访问
    private var title: String?
    
    init(dict: [String: Any]) {
        // 保证对象已经完成初始化
        super.init()
        //Use of 'self' in method call 'setValuesForKeys' before super.init initializes self
        // 使用self的方法setValuesForKeys 之前，应该调用super.init()
        // KVC的方法， 是OC的方法，在运行时给对象发出消息
        // 要求对象已经完成实例化
        setValuesForKeys(dict)
    }
    
    // 重写父类的方法
    override func setValue(_ value: Any?, forKey key: String) {
        // 没有调用， 将父类的代码实现完全覆盖！
    }
}

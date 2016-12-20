//
//  Person.swift
//  计算属性
//
//  Created by ityike on 2016/12/20.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class Person: NSObject {

    // getter & setter, 日常开发不用！
    private var _name: String?
    var name: String? {
        get {
            // 返回 _成员变量
            return _name
        }
        set {
            // 使用 _成员变量记录值
            _name = newValue
        }
    }
    
    var title: String {
        // 只重写了getter方法，只读属性
        get {
            return "Mr. " + (name ?? "")
        }
    }
    
    // 只读属性可以直接return（简写）
    // 又称为计算型属性-> 本身不保存内容，都是通过计算获得结果
    // 类似于一个函数，没有参数，但是一定有返回值
    // 懒加载的属性会分配空间存储 
    var title2: String {
        return "Mr. XXX." + (name ?? "")
    }
    
    // 懒加载的title 本质上一个闭包
    // 懒加载会在第一次访问的时候，执行，闭包执行完毕后，会把结果保存在title3 中
    // 后续调用，直接返回title3 的内容
    lazy var title3: String = {
        return "Lazy" + (self.name ?? "")
    }()
    
    
    
    
    
}

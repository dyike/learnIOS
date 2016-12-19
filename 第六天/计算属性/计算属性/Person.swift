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
    var title2: String {
        return "Mr. XXX." + (name ?? "")
    }
}

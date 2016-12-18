//
//  Person.swift
//  运行时加载属性列表
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    var age: Int = 0
    var title: String?
    
//    init(dict: [String: Any]) {
//        super.init()
//        setValuesForKeys(dict)
//    }
    
    // 目标：使用运行时，获取当前类所有属性的数组
    class func propertyList() -> [String] {
        var count: UInt32 = 0
        // 1 获取 类 的属性列表,返回属性列表的数组
        let lists = class_copyPropertyList(self, &count)
        print("属性的数量 \(count)")
        
        // 2 遍历数组
//        for i in 0..<Int(count) {
//            // 3 根据下标获取属性
//            let pty = lists?[i]
//            // 4 获取属性的名称 C语言的字符串
//            // Int8 -> Byte -> Char => C 语言的字符串
//            let cName = property_getName(pty!)   // 解包
////            print(cName)
//            // 5 转换成String 的字符串
//            let name = String(utf8String: cName!)
//            print(name!)
//        }
        
        for i in 0..<Int(count) {
            // 3 根据下标获取属性
            // 使用guard语法，依次判断每一项是否有值，只要有一项为nil，就不再执行后续的代码
            guard let pty = lists?[i],
                let cName = property_getName(pty),
                let name = String(utf8String: cName)
                else {
                    // 继续遍历下一个
                    continue
            }
            print(name)
        }
        
        // 3 释放C语言的对象
        free(lists)
        
       return []
    }

}

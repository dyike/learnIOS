//
//  Student.swift
//  swift面向对象
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class Student: Person {
    var no: String
    
    // 重写 person中的构造函数， 父类方法不能满足要求
//    override init() {
//        
//        no = "001"
//        super.init()
//    }
    
    init(name: String, no: String) {
        self.no = no
        
        super.init(name: name)
    }
}

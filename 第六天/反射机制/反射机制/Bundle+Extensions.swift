//
//  Bundle+Extensions.swift
//  反射机制
//
//  Created by ityike on 2016/12/20.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import Foundation

extension Bundle {
    
    // 返回命名空间字符串
    func namespace() -> String {
        //return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    // 计算型属性类似于函数，没有参数有返回值
    var nameOfSpace: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
}

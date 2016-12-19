//
//  DemoLabel.swift
//  懒加载
//
//  Created by ityike on 2016/12/19.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {
    // 重写构造函数
    // Xib不会调用，纯代码专用
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    // initWithCoder -> 是使用Xib / Storyboard 开发的入口
    // 提示， 所有UIView 及子类在开发时，一旦重写了构造函数
    // 必须要实现 initWithCoder 函数,以保证提供两个通道
    // 方法的添加 Xcode有智能提示
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUI()
        // fatalError: 如果使用Xib 开发，会直接崩溃
        // 禁止Xib使用本类
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUI() {
        print("设置界面")
    }
    
}

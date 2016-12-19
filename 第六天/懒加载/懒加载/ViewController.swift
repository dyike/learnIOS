//
//  ViewController.swift
//  懒加载
//
//  Created by ityike on 2016/12/19.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var label: DemoLabel?
    
    // 初始化label 并且分配了空间, 会提前创建
    // 在移动开发中，延迟加载减少内存消耗
    // 懒加载 - lazy
    
    // 延迟创建
    // 最大的好处 -> 解除解包的烦恼
    lazy var label: DemoLabel = DemoLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    
    private func setUI() {
//        // 创建控件
//        label = DemoLabel()
        
        // 添加到视图
        // ! - 解包，为了参与计算，addsubview 用subview 数组记录控件，数组中不允许插入nil
        // ? - 可选解包  调用方法，如果为nil，不调用方法，但是不能参与计算
        view.addSubview(label)
        
        label.text = "hello"
        label.sizeToFit()
        label.center = view.center
    }


}


//
//  ViewController.swift
//  计算属性
//
//  Created by ityike on 2016/12/20.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p = Person()
        // setter
        p.name = "ityike"
        
        // getter
        print(p.name!)
        
        // Cannot assign to property: 'title' is a get-only property
        // 只读属性
        // p.title = "hhahah"
        print(p.title)
    }


}


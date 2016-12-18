//
//  ViewController.swift
//  swift面向对象
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let p = Person()
//        print(p.name)
        
        let s = Student(name: "yuanfeng", no: "001")
        print(s.name + "----" + s.no)
        
        
//        let p1 = Person(name: "yuanfeng")
//        print(p1.name)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


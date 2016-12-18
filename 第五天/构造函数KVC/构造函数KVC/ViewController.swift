//
//  ViewController.swift
//  构造函数KVC
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let p = Person(dict: ["name": "yuanfeng", "age": 18])
//        print("\(p.name!) \(p.age)")
        let s = Student(dict: ["name": "yuanfeng", "age": 18, "title": "boss", "no": "002"])
        print("\(s.name!) \(s.age) \(s.no)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


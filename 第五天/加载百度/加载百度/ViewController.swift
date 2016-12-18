//
//  ViewController.swift
//  加载百度
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p = Person(name: "ityike", age: 18)
        print(p?.name)
        // URL 的构造函数可以返回nil
        // 构造函数就是实例化对象的
        // init?(string: String) -> 构造函数可以返回 nil
        let url = URL(string: "https://www.baidu.com")
        
        // 发起网络请求
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
//            if (error != nil) {
//                print("网络请求失败")
//                return
//            }
            
            guard let data = data else {
                print("网络请求失败 \(error)")
                return
            }
        
            // 将data转换成String
            let html = String(data: data, encoding: .utf8)
            print(html!)
        }.resume()
    }


}


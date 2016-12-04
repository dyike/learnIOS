//
//  ViewController.swift
//  4GCD
//
//  Created by ityike on 2016/12/3.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadData { (result) in
            print("获取的新闻数据\(result)")
        }
        // 尾随闭包
        // 如果函数的最后一个参数是闭包，函数的参数可以提前结束，最后一个参数直接使用{} 包装闭包
        loadData(completion: { (result) -> () in
            print(result)
        })
    }
    
    func demo() -> () {
        
        // 尾随闭包
        DispatchQueue.global().async {
            // 嵌套的gcd Xcode 不会改变尾随闭包
            DispatchQueue.main.async(execute: {
                <#code#>
            })
        }
        
        // 尾随闭包
        DispatchQueue.main.async {
            <#code#>
        }
    }
    
    /**
    * 在异步执行任务，获取结果，通过block、闭包 回调
    */
    func loadData(completion: @escaping (_ result: [String]) -> ()) -> () {
        // 将任务添加到队列，指定执行任务的函数
        // 翻译： 队列 调度任务（闭包） 以同步、异步 的方式执行
        
        DispatchQueue.global().async {
            print("耗时操作 \(Thread.current)")
            
            // 休眠
            Thread.sleep(forTimeInterval: 1.0)
            
            // 获取结果
            let json = ["偷笑", "八卦"]
            
            // 主队列回调
            DispatchQueue.main.async {
                print("主线程更新 UI \(Thread.current)")
                
                // 回调 -> 执行 闭包（通过传入参数）
                // 传递异步获取的结果
                completion(json)
            }
        }
    }

}


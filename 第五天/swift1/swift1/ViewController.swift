//
//  ViewController.swift
//  swift1
//
//  Created by ityike on 2016/12/18.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var completionCallBack: (() -> ())?

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // 尾随闭包
        // 如果函数的最后一个参数是闭包，函数参数可以提前结束，最后一个参数直接使用 {} 包装闭包的代码
//        loadData { (result) in
//            print("获取的新闻数据\(result)")
//        }
        
        
        // 循环引用 单方向的引用是不会产生循环引用
        // 只是闭包对self 进行了copy闭包执行完成后，会自动销毁，同时释放对self的引用
        // 同时需要self 对闭包引用
        
        // 接触循环引用 需要打断链条
        //方法1： OC方式
//        weak var weakSelf = self
//        demo {
//            print(weakSelf?.view)
//        }
        
        // 方法2 Swift推荐方法
        // [weak self] 表示 {} 中的所有self 都是弱引用，需要注意解包
        demo { [weak self] in
            print(self?.view)
        }

        
    }
    
    func loadData(completion: @escaping (_ result: [String]) -> ()) -> () {
        // 将任务添加到队列，指定执行任务的函数
        // 翻译： '队列' 调度任务， 以同步或者异步的方式执行
        
        DispatchQueue.global().async {
            print("耗时操作\(Thread.current)")
            
            // 休眠
            Thread.sleep(forTimeInterval: 1.0)
            
            // 获得结果
            let json = ["头条", "八卦", "明星"]
            
            // 主队列回调
            DispatchQueue.main.async {
                print("主线程更新 UI \(Thread.current)")
                
                // 回调-> 执行，闭包
                completion(json)
            }
        }
    }
    
    
    func demo(completion: @escaping () -> ()) -> () {
        // 使用属性记录闭包 -> self 对闭包引用了
        completionCallBack = completion
        
        // 尾随闭包
        // 异步
        DispatchQueue.global().async {
            print("耗时操作")
            
            // 休眠
            Thread.sleep(forTimeInterval: 3.0)
            
            DispatchQueue.main.async {
                // 回调执行闭包
                completion()
            }
        }
        
    }
    
    deinit {
        print("Let's go")
    }
    
 


}


//
//  ViewController.swift
//  循环引用
//
//  Created by ityike on 2016/12/4.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 属性就是一个var
    var completionCallBack: (() -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // block 中如果出现self
        // 只是闭包对 self 进行了 copy 闭包执行完成之后，同时释放对 self 的引用。
        // 同时需要 self 对闭包引用
        loadData {
            print(self.view)
        }
    }

    func loadData(completion: @escaping () -> ()) -> () {
        
        // 属性记录闭包 self 对闭包的引用。
        completionCallBack = completion
        // 异步
        DispatchQueue.global().async {
            print("耗时操作")
            
            DispatchQueue.main.async {
                // 回调 执行闭包
                completion()
            }
        }
    }
    
    deinit {
        print("我走了")
    }


}


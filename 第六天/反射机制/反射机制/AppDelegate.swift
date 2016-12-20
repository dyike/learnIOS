//
//  AppDelegate.swift
//  反射机制
//
//  Created by ityike on 2016/12/20.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // 代码中的 ？都是可选解包，发送消息，不参与计算
        // 实例化window
        window = UIWindow()
        window?.backgroundColor = UIColor.white
        
        // 设置 根控制器
        let vc = ViewController()
        window?.rootViewController = vc
        
        // 让window 可见
        window?.makeKeyAndVisible()
        
        return true
    }




}


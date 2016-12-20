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
        
        // -- 输出 Bundle info.plist 的内容
        // 因为字典是可选的，因此需要解包再取值 如果为空，就不取值
        // 通过key从字典中取值，如果key 错了就没有值
        // AnyObject? 表示不一定能够取到值
        //let nameSpace = Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        
        //let nameSpace = Bundle.main.namespace()
        let nameSpace = Bundle.main.nameOfSpace

        
        // 设置 根控制器 需要添加命名空间 -> 默认就是项目名称
//        let className = "反射机制.ViewController"
        let className = nameSpace + ".ViewController"
        // AnyCalss? -> 视图控制器
        let cls = NSClassFromString(className) as? ViewController.Type
        // 使用类创建视图控制器
        let vc = cls?.init()
        //let vc = ViewController()
        window?.rootViewController = vc
        
        // 让window 可见
        window?.makeKeyAndVisible()
        
        return true
    }




}


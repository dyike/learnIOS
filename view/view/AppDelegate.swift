//
//  AppDelegate.swift
//  view
//
//  Created by ityike on 2016/10/11.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow()
        self.window!.rootViewController = UIViewController()
        
        
        
        
        //here we can add subviews
        let mainview = self.window!.rootViewController!.view
       
        //view
/*
        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        
        let v2 = UIView(frame: CGRect(x: 41, y: 56, width: 132, height: 194))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)

        let v3 = UIView(frame: CGRect(x: 43, y: 197, width: 160, height: 230))
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
 
        mainview?.addSubview(v1)
        v1.addSubview(v2)
        mainview?.addSubview(v3)
 
 */
        
        //bounds and center
        
//        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 194))
//        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
//        
//        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
//        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
//        mainview?.addSubview(v1)
//        v1.addSubview(v2)
//        v2.bounds.size.height += 20
//        v2.bounds.size.width += 20
        
//        v1.bounds.origin.x += 10
//        v1.bounds.origin.y += 10
  
        //center
        
//        v2.center  = v1.convert(v1.center, from: v1.superview)
        
        
        
        // transform
//        v1.transform = CGAffineTransform(rotationAngle: 45 * CGFloat(M_PI)/180.0)

//        let v1 = UIView(frame: CGRect(x: 20, y: 111, width: 132, height: 194))
//        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
//        let v2 = UIView(frame: v1.bounds)
//        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
//        mainview?.addSubview(v1)
//        v1.addSubview(v2)
        
//        v2.transform = CGAffineTransform(translationX: 100, y: 0)
//        v2.transform = v2.transform.rotated(by: 45 * CGFloat(M_PI)/180.0)
//        
//        v2.transform = CGAffineTransform(rotationAngle: 45 * CGFloat(M_PI)/180.0)
//        v2.transform = v2.transform.translatedBy(x: 100, y: 0)
        
    
//        v1.transform = CGAffineTransform(scaleX: 1.8, y: 1)
        
        
//        let r = CGAffineTransform(rotationAngle: 45 * CGFloat(M_PI)/180.0)
//        let t = CGAffineTransform(translationX: 100, y: 0)
//        v2.transform = t.concatenating(r)
//        v2.transform = r.inverted().concatenating(v2.transform)
        
        
//        let v3 = UIView(frame: CGRect(x: 43, y: 197, width: 160, height: 230))
//        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
//        mainview?.addSubview(v3)
        
        //and the rest is as before
/*
        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        
        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        mainview?.addSubview(v1)
        v1.addSubview(v2)
    
        v1.transform = CGAffineTransform(a: 1, b: 0, c: -0.2, d: 1, tx: 0, ty: 0)
        
*/
        
        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView(frame: CGRect(x: 0, y: 0, width: 132, height: 10))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView(frame: CGRect(x: v1.bounds.width - 20, y: v1.bounds.height - 20, width: 20, height: 20))
        
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        mainview?.addSubview(v1)
        v1.addSubview(v2)
        v1.addSubview(v3)
        
//        v2.autoresizingMask = .flexibleWidth
//        v3.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin]
        
        

        self.window!.backgroundColor = UIColor.white
        self.window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


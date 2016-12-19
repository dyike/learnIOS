//
//  DetailViewController.swift
//  私人通讯录
//
//  Created by ityike on 2016/12/19.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var phoneText: UITextField!
    
    @IBOutlet weak var titleText: UITextField!
    
    var person: Person?
    
    // 完成回调属性
    // 闭包的返回值是可选的
    //var completionCallBack: () -> ()?
    // 闭包是可选的
    var completionCallBack: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 判断person是否有值，如果有设置UI
        if person != nil {
            nameText.text = person?.name
            phoneText.text = person?.phone
            titleText.text = person?.title
        }

    }


    @IBAction func savePerson(_ sender: Any) {
        
        // 1 判断Person 是否为nil
        // 是， 就是新建
        if person == nil {
            person = Person()
        }
        
        //2 用UI更新person内容
        person?.name = nameText.text
        person?.phone = phoneText.text
        person?.title = titleText.text
        
        // 3 执行闭包回调
        // 可选解包 如果为nil，什么也不做
        completionCallBack?()
        
        // 4 返回上一级
        // _ 可忽略一切不关心的内容
        _ = navigationController?.popViewController(animated: true)
        
    }

}

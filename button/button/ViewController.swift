//
//  ViewController.swift
//  button
//
//  Created by ityike on 2016/12/3.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

// @interface ViewController() <UITableViewDatasource>
//class ViewController: UIViewController, UITableViewDataSource {

class ViewController: UICollectionViewController {

    // MARK: - 视图生命周期
    // MARK: 视图加载完成
    override func viewDidLoad() {
        super.viewDidLoad()
/*
        // 创建视图
        let v = UIView(frame: CGRect(x: 20, y: 20, width: 200, height: 150))
        
        // 设置背景颜色
//        v.backgroundColor = UIColor.red
        v.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)        // TODO: 应该修改新的颜色
        
        // 添加到当前视图
        view.addSubview(v)
        
        // 创建图象视图
        let iv = UIImageView(image: #imageLiteral(resourceName: "FullSizeRender"))        // FIXME: 更改头像
        
        iv.center = view.center
        view.addSubview(iv)
 */
        
//        setUI()
    
    }
    /*
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        // textLabel 是可选的
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    func setUI() {
        // 创建表格
        let tv = UITableView(frame: view.bounds, style: .plain)
        
        // 添加到视图
        view.addSubview(tv)
        
        // 注册可重用 cell
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        // 设置数据源
        tv.dataSource = self
    }
    
    */
    
    // MARK: 接受到内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


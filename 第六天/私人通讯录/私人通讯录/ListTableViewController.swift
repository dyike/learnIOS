//
//  ListTableViewController.swift
//  私人通讯录
//
//  Created by ityike on 2016/12/19.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    // 联系人数组
    var personList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData { (list) in
            print(list)
            // 拼接数组, 闭包中定义好的代码，在需要的时候执行，需要self，指定语境
            self.personList += list
            // 刷新表格
            self.tableView.reloadData()
        }
    }
    
    // 模拟异步，利用闭包回调
    private func loadData(completion: @escaping (_ list: [Person]) -> ()) -> () {
        DispatchQueue.global().async {
            print("正在努力加载中...")
            
            Thread.sleep(forTimeInterval: 1)
            
            var arrayM = [Person]()
            
            for i in 0..<20 {
                let p = Person()
                p.name = "ityike - \(i)"
                p.phone = "1860" + String(format: "%06d", arc4random_uniform(100000))
                p.title = "developer"
                
                arrayM.append(p)
            }

            // 主线程回调
            DispatchQueue.main.async(execute: {
                // 回调, 执行闭包
                completion(arrayM)
            })
        }
    }
    // MARK: - 控制器跳转方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 类型转换 as
        // swift中String之外，绝大数使用as 需要 ？
        // as! / as? 直接根据前面的返回值来决定
        let vc = segue.destination as! DetailViewController
        
        // 设置选中的 Person， Indexpath
        if let IndexPath = sender as? IndexPath {
            // indexpath一定有值
            vc.person = personList[IndexPath.row]
            
            // 设置编辑完成的闭包
            vc.completionCallBack = {
                // 刷新指定行
                self.tableView.reloadRows(at: [IndexPath], with: .automatic)
            }
        } else {
            // 这里有循环引用
            // 新建个人记录
            vc.completionCallBack = { [weak vc] in
                // 1 获取明细控制器的Person
                guard let p = vc?.person else {
                    return
                }
                // 2 插入到数据的顶部
                self.personList.insert(p, at: 0)
                // 3 刷新表格
                self.tableView.reloadData()
            }
        }
    }
    
    @IBAction func newPerson(_ sender: Any) {
        // 执行跳转界面
        performSegue(withIdentifier: "list2detail", sender: nil)
    }
    
    // MARK: - 代理方法
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // 执行 segue
        //segues没有设置标识，虽然有连线，这种一般都可以废弃或 重新添加标识，结合代码
        //Main.storyboard: Segues initiated directly from view controllers must have an identifier
        performSegue(withIdentifier: "list2detail", sender: indexPath)
    }
    
    // MARK: - 数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        return cell
    }

}

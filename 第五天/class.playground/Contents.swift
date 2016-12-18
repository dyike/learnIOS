//: Playground - noun: a place where people can play

import UIKit

class Student: NSObject {
    // 定义属性
    // 定义存储属性
    var age: Int = 0;
    var name: String?
    
    var mathScore: Double = 0.0
    var chineseScore: Double = 0.0
    
    // 计算属性  通过别的方法计算到结果的属性，称之为计算属性
    var avargeScore: Double {
        return (mathScore + chineseScore) * 0.5
    }
    
    // 定义类属性， 雷属性是和整个类相关的属性，而且是通过类名进行访问
    static var courseCount: Int = 0
    
    /*
    // 定义一个方法，返回平均值
    func getAvargeScore() -> Double {
        // 在swift，如果使用当前对象某个属性，或者调用当前对象的某一个方法，可以直接使用，不需要加self
        return (mathScore + chineseScore) * 0.5
    }
    */
    
}

// 给类属性进行赋值
Student.courseCount = 2
// 创建对象
let stu = Student()
stu.age = 10
stu.name = "sss"

stu.mathScore = 88
stu.chineseScore = 60

print(stu.age)
if let name = stu.name {
    print(name)
}


let avarge = stu.avargeScore

print(avarge)


class Person: NSObject {
    var name: String?
    var age: Int = 0
    
    override init() {
        // 在构造函数中如果明确的super.init() 那么系统会帮助调用super.init()
        //super.init()
        
        print("11-----11")
    }
    
    // 自定义构造函数
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
//    init(dict: [String : AnyObject]) {
//        let tname = dict["name"]
//        // tname 是一个AnyObject？ ，转成String?
//        // as? 最终转成的类型是一个可选的类型
//        // as! 最终转成的类型是一个确定的类型
//        name = tname as? String
//        
//        /*
//         let tage = dict["age"]
//         let tage1 = tage as? Int
//         if tage1 != nil {
//            age = tage1!
//         }
//            
//        */
//        
//        if let tage = dict["age"] as? Int {
//            age = tage
//        }
//    }
    
    
    init(dict: [String: Any]) {
        super.init()
        self.setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forKey key: String) {
    }
}

let p = Person()

let p1 = Person(name: "ityike", age: 18)
p1.age


let p2 = Person(dict: ["name" : "ityike", "age" : 18])



//class Person1: NSObject {
//    // 属性监听器
//    var name: String? {
//        // 属性已经改变是进行监听
//        didSet {
//            print(name)
//            print(oldValue)
//        }
//    }
//}
//
//let person = Person()
//person.name = "ityike"
//person.name = "yf"






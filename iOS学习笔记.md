# 第1天

## UIView（控件）

#### 1 什么是控件？ 
屏幕上所有的UI元素都叫做控件，也可以叫做组件、视图。

按钮（UIButton）   文本（UILabel）

#### 2 控件的共同属性？

尺寸、 位置、 背景色。。。。

#### 3 控件的共同属性都抽象到UIView中，所有的控件都继承于UIView


## 父控件，子控件

#### 所有的控件都是一个容器

可以将其他的控件放到该控件的内部
比较常见的还是将UIView作为容器。

每一个控制器都有一个UIView。
控制器本身是不可见的
能够看到的是控制器的view
每个控制器中都有一个UIView的属性。
控制器中管理的所有子控件都是该控件的子控件。


## UIView常见的属性

#### @property(nonatomic, readonly) UIView *superview;

* 获取自己的父控件对象

#### @property(nonatomic, readonly, copy) NSArray *subview;   

* 为什么是数组呢？superview只有一个，subview可以有多个。
* 获取所有的子控件对象

#### @property(nonatomic) NSInteger tag;   

* 控件的ID（标识），父控件可以通过tag来找到对应的子控件。

#### @property(nonatomic) CGAffineTransform transform;   

* 控件的形变属性（旋转，比例缩放，平移等属性）

## UIView的常见方法：

* - (void)addSubview: (UIView *)view;     //添加一个一个子控件view
* - (void)removeFromSuperview;   // 将自己从父控件中移除。
* - (UIView *)viewWithTag: (NSInteger)Tag   // 这个玩意儿少用！原因：1 效率低，递归引用。 2 容易乱！

## UIView的常见属性

* @property(nonatomic) CGRect frame;     // 控件矩形框在父控件中的位置和尺寸。（以父控件的左上角为坐标原定）
* @property(nonatomic) CGRect bounds;    // 控件矩形框的位置和尺寸（以自己左上角为坐标原点，所以bounds的x y 一般为0）
* @property(nonatomic) CGPonit center；   // 控件中点的位置（以父控件的左上角为坐标原点）



# 第2天

## UILabel

常见的属性：
* text    // 文字
* font    // 字体
* textColor     // 文字颜色
* textAlignment  // 对齐模式
* numberOfLines  // 对齐行数
* lineBreakMode   // 换行模式



### UIImage 显示图片

UIImageView是一个控件，用来显示Image的对象。


## UIButton


## UIButton UIImageView UILabel的选择

* UIButton
	既能显示文字，又能显示图片（能显示两种图片，背景图片，内容图片）。
	长按高亮的时候可以切换图片和文字。
	直接通过AddTarget... 方法监听点击。
* UIImageView
	能显示图片，不能直接通过addTarget...方法监听点击。
	
* UIlabel
	能显示文字，不能直接通过addTarget...方法监听点击。、
	
	
	仅仅显示数据，不需要点击：UIImageView 或者 UILabel
	
	不仅显示数据，还需要监听点击：建议UIButton，其实UIImageView和UILabel也可以通过手势来识别
	
	长按控件后，会改变显示的内容： 不用考虑了，选择UIButton
	
	同时显示两张图片，背景图片内容图片  不用考虑了，选择UIBtton
	
	
	
## 什么是plist文件

直接将数据直接写在代码里，不是一种合理的做法，如果数据经常改动，就要经常翻开对应的代码进行修改，造成代码的扩展性低。

考虑将经常变的数据放在文件中进行存储，程序启动后从文件中读取最新的数据，如果要变动数据，直接修改数据文件即可，不用修改代码。

一般可以使用属性列表文件存储NSArray 和 NSDictionary之类的数据，这种属性列表文件的扩展名plist。因此也成为plist文件。


先打一个断点 执行po NSHomeDirectory()查看模拟器的位置





------


Swift部分

### guard的使用

guard语句必须带有else语句。

```swift
guard 条件表达式 else {
	// 处理语句
   break
}
```



### deinit

```swift
// 没有func -> 不让调用
// 没有（）-> 不让重载
// 在对象被销毁前自动调用
// 类似于OC 的dealloc
deinit {
	// 1.跟踪对象的销毁
	// 2.必须释放
	/*
	通知，不释放不会崩溃，会泄露
	KVO 不释放会崩溃
	NSTimer / CADisplayLink
	*/
}
```	


限定作用域的时候，可以加上关键字 private


https://pan.baidu.com/play/video#video/path=%2F%E8%AE%A1%E7%AE%97%E6%9C%BA%E8%AF%AD%E8%A8%80%E5%AD%A6%E4%B9%A0%2FSwift%203.0%2Fswift3.0%2F04-Swift-%E7%AC%AC03%E5%A4%A9(%E9%A1%B9%E7%9B%AE%E6%90%AD%E5%BB%BA)%2F19-%E5%85%B3%E4%BA%8E%E7%AE%80%E5%8E%86%E7%9A%84%E4%B8%80%E4%BA%9B%E7%BB%86%E8%8A%82.mp4&t=18






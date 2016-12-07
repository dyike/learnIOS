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





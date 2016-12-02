# 第一章View

### 几个概念：

* 一个view是UIView类或UIView的子类的对象，知道怎么在界面的矩形区域绘制自己。

* 一个view也是一个responder(UIView是UIResponder的子类)。是与用户交互的（触摸、点击）。

* 一个view可以有子view（subview），一个subview只能有一个superview。这就形成了一个view的树状结构。如果从界面上去除（隐藏/移动）一个view，它的subview也将去除（隐藏/移动）。

* 一个view可以从nib生成，也可以通过代码生成。

## Window
view hierarchy的顶层是app的window，是UIWindow的一个实例，或者UIView子类的实例。在应用中应该只有一个main window。在启动的时候创建，不会被销毁或者代替。想象一个平时我们使用的app，这是一个什么东西？就是一个应用的背景，并且是superview，其他的view都是他的subview。

app的window需要填充设备的屏幕：window初始化时候，frame设置成UIScreen.main.bounds。如果使用main stroyboard, UIApplicationMain 函数会自动完成。

```swift
let w = UIWindow(frame: UIScreen.main.bounds)
//在iOS10 中可以不传入frame参数，默认设置成screen的bounds
let w = UIWindow()
```

为了保证window在app的生命周期中存在，app delegate类会用一个strong retain policy来维持一个window属性。这个过程是：启动app，UIApplicationMain方法会初始化app delegate类并一直保持这个实例。然后window实例就会被赋值到app delegate实例的window属性上，所以app的整个生命周期都一直保持。如果使用main storyboard，这些都是自动初始化的。

当一个view控制器成为main window的rootViewController， 它的view将会变为main window的有且仅有的一个直接subview，也就是main window上的root view，之后所有的view都是这个root view上的subview。因此，root view是view hierarchy的最顶层的对象，用户是可以看到的。但有时候，用户可能会看到root view之后的window，基于这个原因，可以在给main view 设置好backgroundColor。


app的界面应该是不可见的，知道你window被设置为key window。这个可以通过调用UIWindow实例的makeKeyVisible方法来完成。

#### 总结：
* 使用main storyboard

> 1. storyboard文件在Info.plist的键为 Main storyboard file base name中指定（UIMainStoryboardFile）  
> 2. UIApplicationMain实例化UIWindow，设置好frame。把设置好的UIWindow实例指定给app delegate的window属性  
> 3. storyboard初始化的view controller，指定到 window 的 rootViewController 属性  
> 4. 这些都是发生在app delegate的 application: didFinishLaunchingWithOptions 被调用之前  

* 不使用main storyboard

> 1. 在General pane,选择"Main"，并删除  
> 2. 删除Main.storyboard和ViewController.swift  
> 3. 删除AppDelegate.swift的所有内容  

例子：An App Delegate class with no storyboard

```swift
import UIKit
@UIApplicationMain
class AppDelegate : UIResponder, UIApplicationDelegate {
    var window : UIWindow?
    func application(application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?)
        -> Bool {
            self.window = UIWindow()
            self.window!.rootViewController = UIViewController()
            self.window!.backgroundColor = UIColor.whiteColor()
            self.window!.makeKeyAndVisible()
            return true
	}
}
```
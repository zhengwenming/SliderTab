# SliderTab
滑动导航，支持手势滑动和点击tab滑动。
三个tab对应三个VC，实现代码和逻辑分离到三个VC，而且，当最外面的contentVC释放dealloc的时候，三个子VC会dealloc。不用担心内存释放问题和引用问题。

![image](https://github.com/zhengwenming/SliderTab/blob/master/SilderTab/sliderTab.gif)   



简单的滑动导航的实现思路和demo。复杂的不可以用此方法，复杂的类似网易的要封装优化。



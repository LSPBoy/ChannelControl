# ChannelControl
仿照这腾讯新闻的客户端做的频道管理的功能
<br>
实现原理是利用UICollectionView+UIGestureRecognizer实现的。

### 功能

- [x] 拖拽排序已订阅频道
- [x] 点击删除、添加订阅频道
- [x] 固定第一个订阅频道，不可点击、拖拽

### 显示效果

| 正常显示 | 点击删除/增加 | 拖拽排序 |
| ---- | ---- | ---- |
|![image](https://github.com/LSPBoy/ChannelControl/blob/master/images/1.gif)| ![image](https://github.com/LSPBoy/ChannelControl/blob/master/images/2.gif)| ![image](https://github.com/LSPBoy/ChannelControl/blob/master/images/3.gif)|

### 使用方法

```objc
[[ChannelControl shareControl] showChannelViewWithInUseTitles:titleArr1 unUseTitles:titleArr2 finish:^(NSArray *inUseTitles, NSArray *unUseTitles) {
//处理后续问题
}];
```
### 参数说明：

**传入参数：**
<br>
**titleArr1** ：已选频道集合 **titleArr2**：未选频道集合
<br>
<br>
**返回数据：**
<br>
**inUseTitles**：排序、增删后的已选频道集合 **unUseTitles**：增删后的未选频道集合

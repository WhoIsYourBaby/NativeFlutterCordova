### 假设你已经在原生工程(取名native)上成功集成Cordova，参考官方文档

### 往项目再集成插件步骤如下

- 使用Cordova创建一个新iOS项目(取名demo)
- 在demo里面安装你想要的插件，以device为例
```
cordova plugin add cordova-plugin-device
```
这时我们发现demo工程里成功安装了device插件，接下来我们需要把插件iOS的源代码文件、插件的js搬运到原生工程里并且在原生的config.xml注册插件

- 拷贝iOS源代码文件
```
cp demo/plugins/cordova-plugin-device/src/ios/ native/plugins/cordova-plugin-device/
```

- 在native工程里xcode添加刚刚拷贝的文件
- 拷贝js
```
需要拷贝两个文件到native/www下路径子目录下
分别是：
demo/platforms/ios/www/cordova_plugins
demo/platforms/ios/www/plugins/cordova-plugin-device
```
- config.xml注册插件
```
<feature name="Device">
    <param name="ios-package" value="CDVDevice"/>
</feature>
```

完成

总结集成cordova插件三要素：
- 插件iOS源码文件
- 插件js源码文件
- 注册插件
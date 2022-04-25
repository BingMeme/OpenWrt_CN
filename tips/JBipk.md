# ImmortalWrt 系统-软件包 安装插件       
前言：      
* `此教程仅适用于（极大概率成功）ImmortalWrt官方发行固件`          
* `也可尝试于其他人用ImmortalWrt任意分支编译而来的固件，但是也有一定概率是不兼容某些程序，因为非官方编译的人编译时刻的Linux内核版本可能升级或降级，或者编译者改动了分支的LuCI版本与Linux内核版本对应关系，所以不兼容官方源是很正常的情况。`           
**`内核版本不兼容报错时，你仍可以尝试忽略这个 Linux内核 的依赖报错，强行安装某ipk，虽然最后你可能成功运行了安装的插件，但是也有较大可能会引起固件系统其他可见或不可见的问题，所以并不推荐强行忽略安装。它的参数使用例如：`        
`opkg install dockerman.ipk --force-depends`**

![1](https://user-images.githubusercontent.com/73426989/159654047-456ed964-d2f4-4cfe-b1bf-43bfd9b55440.png)          
如上图，来到 系统-软件包 ，先点击 更新列表 同步软件源，等待过程如下图：            
![2](https://user-images.githubusercontent.com/73426989/159655378-d0ccdf8e-041b-45e6-9a12-823bb4d472ff.png)       
如果点击过 更新列表 按钮后长时间无任何反应，可以改到终端执行命令行来同步软件源，命令是 `opkg update` ，大概如下图：   
![11](https://user-images.githubusercontent.com/73426989/159655242-4bc8e2de-33cf-4a04-87da-26fcab73b8e1.png)                

等到出现各种包都 ...check passed 了，就ok，如下图：      
![3](https://user-images.githubusercontent.com/73426989/159655568-3ded890d-9da4-4e05-adce-78b34b2d66c3.png)       
如果显示未 ...passed...，那就说明软件源不适合你的固件，放弃再见。         

关闭passed提示窗口，页面会自动刷新出所有包列表，然后你在 筛选器 中输入你要的软件包，比如 `diskman` `docker` ，列表会筛选出所有名称带有你输入关键词的包，如下图：    
![4](https://user-images.githubusercontent.com/73426989/159657326-9ad23704-bee9-4396-ad30-56f03e2882fb.png)    
一般都是按照顺序安装：依赖程序、本体程序、luci程序、lcui翻译程序（如果你不知道依赖程序有哪些，可以直接先尝试安装luci程序，报错时日志会告诉你需要先安装过哪些依赖程序）           
如果安装任一程序报错提示 不兼容（...incompatible with...），那也恭喜你也死在最后一步，放弃再见。          


[返回主页](../README.md)          





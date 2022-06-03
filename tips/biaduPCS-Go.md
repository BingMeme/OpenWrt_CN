# Go环境运行的纯命令行交互百度网盘第三方客户端程序：BaiduPCS-Go

前言：         
此程序仅推荐满足以下场景使用         
①您是优质的svip付费百度网盘用户
②您获取影视剧的渠道主要是百度网盘下载
③您在配合emby samba等程序使用

首先贴出这个伟大的项目的地址 [https://github.com/qjfoidnh/BaiduPCS-Go](https://github.com/qjfoidnh/BaiduPCS-Go) ，稍有Linux基础的或者就是win用户，您可以免看下方的小白
教程，直接看项目readme开始欢快跑起来程序就行了。                  

接下来我们主要给小白演示Linux内核（带有Go运行环境）的系统如何跑起来这个度盘客户端。              
这个项目的开发大大已经编译分发了可执行程序，适用win linux类等系统：[https://github.com/qjfoidnh/BaiduPCS-Go/releases](https://github.com/qjfoidnh/BaiduPCS-Go/releases)  
我们只需要拖进自己的系统开始执行就行了。           
比如你是x64CPU的ubuntu64位或openwrt64位系统，那么就该拉取BaiduPCS-Go-v3.8.7-linux-amd64.zip。         
如果你是r2s的ubuntu64位或openwrt64位系统，那么就拉取BaiduPCS-Go-v3.8.7-linux-arm64.zip。                
如果你不知道你的设备和系统都是啥玩意，那就都下载试试吧，愿上帝保佑你一次猜对。                

比如我是x64的openwrt             
先root进入openwrt终端，然后执行拉取命令：          
`wget https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.8.7/BaiduPCS-Go-v3.8.7-linux-amd64.zip`     
如果提示没有wget，就先装wget：`opkg update && opkg install wget`          
确定拉取成功后解压并赋权：        
`unzip BaiduPCS-Go-v3.8.7-linux-amd64.zip && chmod -Rf 777 ./*`
然后cd到解压好的目录，直到ls看到本体可执行程序时。             
然后在本体可执行程序所在的目录开始欢乐使用就行了，具体详细各种命令自己看这个项目的readme目录记一记就行了。      
注意：拉取的版本是不是最新的要自己去看看releases页面，不要十年八年后你还在复制我的这个v3.8.7演示.........

接下来我只演示几个简单够用的：         
①登录百度网盘账号：`./BaiduPCS-Go login -bduss=1234567` 这个演示的1234567就是你在浏览器登录百度网盘后生成的身份验证码，其他的登录方式也有，但是毕竟这是个纯命令行的客户端程序，推荐bduss
登录相对操作简单些。获取你的bduss参数方法在原项目readme里写了，这里我再粘贴一次:[https://blog.csdn.net/ykiwmy/article/details/103730962](https://blog.csdn.net/ykiwmy/article/details/103730962)         
登录完成后只要budss还没到生命周期结束，就不用管了。          
②如果要换号登录，那么可以先退出当前登录：     
`./BaiduPCS-Go logout`
③指定下载的默认目录：      
`./BaiduPCS-Go config set -savedir /mnt/sda1`      
这里举例就是在不指定保存位置的情况下默认下载后保存在/mnt/sda1目录，如果你有emby库，可以之后手动拖拽到emby库，不建议直接下载到emby库，因为万一你下的是小电影不想被同用你的emby库的人看到呢。。。           
④
进入到网盘根目录：      
`./BaiduPCS-Go cd /`
显示当期目录下的文件：      
`./BaiduPCS-Go ls`       
进入更深一层某目录：      
`./BaiduPCS-Go cd 某某`      
⑤下载文件：       
`./BaiduPCS-Go d 三上悠亚.avi` 或 `./BaiduPCS-Go download 杨幂.mp4`        

后记:   
如你所见，你的文件可能避免不了中文等字符，建议在win上用xshell等能够复制ls出来的文件名的终端来操作   
更多具体支持命令请看原项目的readme，并且后期程序升级后可能支持的命令写法有变动，所以一定以原项目说明文档为准        




# 在windows电脑上安装emby服务端+百度网盘 的自建影音库方案                

emby是一个强大的影音库软件，服务端和客户端都可以自行安装。           
win上的emby服务端是免费的，安卓上的emby客户端也是免费的，无需开通emby高级订阅会员服务。              
相比之前推荐的baidupcsweb+samba方案，这个方案更 简单（win安装软件和设置全部点点点）和 稳定（各种网盘和emby都是官方客户端，不会有开发者弃坑失效危险）         

首先在你的win电脑上安装 百度网盘、阿里网盘什么的，是你常用来下载到影视剧的软件，至于哪里下得到资源那就自己找吧。                 
然后在你的win电脑上安装 emby服务端：           
访问 [emby官方下载页面](https://emby.media/download.html)         
![1](https://user-images.githubusercontent.com/73426989/166239576-0d3e4ab4-152c-4a2c-bdcf-d3e9165601d8.png)      
下载下来安装程序后好像仍然需要翻墙否则没速度（也可以下载免安装的便携版）。              
安装好后运行并注册一个账户登录后，右击在任务栏的emby服务端图标，点击 Configure Emby           
![2](https://user-images.githubusercontent.com/73426989/166239880-3ad5a5c4-9db5-4440-81ab-d711afe23e55.png)        
接下来主要就是两个地方需要设置，端口 和 媒体库（把你电脑上哪个文件夹让emby当做媒体库扫描播放）         
![3](https://user-images.githubusercontent.com/73426989/166240132-94800d45-ea87-4e73-a044-ba4a6b930da0.png)         
![4](https://user-images.githubusercontent.com/73426989/166240147-6d0056c6-c986-4f81-9d60-ac4825b38760.png)       
其他进阶设置如解码方式和新增其他用户自己摸索吧，不蠢都会秒懂。             

接下来就是安卓手机客户端下载，仍然回到上面的emby下载页下翻到客户端找到安卓的：           
![5](https://user-images.githubusercontent.com/73426989/166240766-9bda877e-0b02-4aea-9c58-a58655dd4082.png)       
安卓的仍然需要登录你创建的账户，局域网一般会自动搜到你的emby服务端的电脑的IP和开放端口，没搜到就手动查看emby服务端的端口。         
这样就可以躺着用手机看电脑上下载到硬盘的影视剧了。        
电脑有人是常年不关机，有人喜欢不用就关，如果你不差那点电费，就常年开正好挂着emby服务端。             
端口映射到公网还可以给朋友看分享的媒体库，美滋滋。                        


[返回主页](../README.md)       

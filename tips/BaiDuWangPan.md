# 百度网盘

![1](https://user-images.githubusercontent.com/73426989/150644207-d2cec491-a0c4-44db-af66-e95b7f16faeb.png)             

BaiduPCSweb 可在服务器中登录并操作百度网盘（最新版支持几乎官方客户端有的所有常用操作）。            
最重要的是可以下载到服务器挂载的硬盘目录中（建议目录设置为挂载的硬盘目录里，方便其他的文件分享程序直接分享出去）             
再配合可道云或者FileBrowser或cloudreve等等对外网提供访问，或samba内网访问此目录。            
同样可映射端口到公网远程访问。                      

但是：百度账号不同于自建云的随时改密码无所谓，百度账号的密码还是不要轻易泄露为好，否则自己记不住改来改去的密码。                   
所以远程http访问baidupcsweb时(大部分人根本懒得openwrt里部署ssl吧？)，还是确保网络是自己的热点或者用了什么代理工具把你的的ddns域名代理了再访问登录你的baidupcsweb      
否则会抓包的别有用心的人会看到你的用户名和密码（当然，登录还需要输入手机短信验证码，但是你的密码还是泄露了，会被记录到黑市的常用习惯组合密码本中，增加你的其他小网站的账号暴力登录的风险。                 
一密码走天下的就更GG了...         

![2](https://user-images.githubusercontent.com/73426989/150644271-24f1ca77-bebb-4698-8ff5-420c403cdb67.jpg)

baidupcsweb可以输入账号密码手机验证码登录，也可以获取BDUSS（cookies。自行百度如何获取自己账号的BDUSS）登录。               
baidupcsweb是开源程序，大神自然自己审计有无窃取cookies后门，其他平凡芸芸众生的我们，只能勇敢地愿意用就用，有大佬爆料有后门再不用就行了...                   
之前宝塔后门事件不也是这么过来的...人家有后门（有意无意鬼知道）操你一次又怎样，小白不还是没得选继续用...           

最后，这个程序还是建议开了超级会员的人用，没花钱的小心黑号没地方哭。                
顺便分享下我用的百度网盘资源分享黑产地：[低调使用](https://t.me/joinchat/AAAAAEhkwtQjONQXe--Z8g)         

[返回主页](https://boduoyejieyi666.github.io/whonolikeboduoyejieyi/)                




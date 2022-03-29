# samba协议打造家庭影音库         

![1](https://user-images.githubusercontent.com/73426989/150643067-a29f5351-f2ed-4227-b7f6-79e6a0e0e86e.png)       

网络存储 > 网络共享          
建议取消勾选“自动共享”              
共享目录手动添加，主要是硬盘文件系统挂载的目录要填对。      
可浏览和匿名必选，八进制文件和目录的权限掩码建议为0644和0755，这样你家里同一子网的人都可以无需登录即可看你分享出来的影音，但是大家都没编辑文件和目录的权限。              

客户端：     
windows打开 资源管理器 > 网络，即可看到OPENWRT的Samba分享目录，配合VLC播放器可以在线播放。           
安卓部分机型的系统自带文件管理器功能羸弱，无法在线播放Samba里的视频，推荐安装KMPlayer客户端，右上角菜单键  > 网络，即可看到名为OPENWRT的SMB服务器可用。              


管理员控制文件增删建议用 [winscp](https://winscp.net/eng/download.php)               

![photo](https://user-images.githubusercontent.com/73426989/150642964-10536e56-ef54-4aee-9dde-acca537cf75e.jpg)      

注意如图二，高级设置里启用UTF8编码，否则你创建的中文名文件都是乱码在win10和安卓的相关客户端查看时）等文件管理软件。               


[返回主页](../README.md)             



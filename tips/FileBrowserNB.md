# filebrowser文件浏览器                

简单易用的文件服务器，既不像可道云那样臃肿，又不像FTP那样简陋              
直接对硬盘目录的读写不经过像可道云一样的分拆合并，速度起飞                 
对内对外皆可简单登录访问或密码访问文件夹，部分格式可以在线播放                 
对外分享很方便（在外下载速度一般取决于服务器公网上行宽带）                 

首先确保你的openwrt设备有USB口，用来插入一个格式化为ext4的硬盘（其他的NTFS也不是不行，就是看你的openwrt固件有没有NTFS驱动了，嫌麻烦就ext4保证挂载得上）             

插好硬盘后去系统 > 挂载点 看看有没有自动挂载上/mnt/sda1 （第一块外接硬盘一般就是sda1）。            

![1](https://user-images.githubusercontent.com/73426989/150644683-afedca84-9179-404d-92c3-578accf21219.jpg)        

你的固件有automount模块就会自动挂载，如果没有就需要 [手动挂载](https://boduoyejieyi666.github.io/whonolikeboduoyejieyi/tips/ManullyGuaZai.html)   

再如图二：                

![2](https://user-images.githubusercontent.com/73426989/150644706-2add56d0-d20c-4cb4-bf2f-8afb841e488c.jpg)        

先填好两个目录（建议都填到LuCI建议的硬盘sda1的目录里）。再保存并应用。再点击手动下载filebrowser的程序的按钮，显示完成后，再点启动，启动完毕后再访问已经运行的filebrowser程序。   

![3](https://user-images.githubusercontent.com/73426989/150644731-f34a74b3-cad9-4bde-8f4e-7b654f36fff2.jpg)             

默认的管理员账号和密码都是admin              

具体进去后怎么用，就不赘述了，很简单的几个设置的地方，自己摸索半小时就会用了。              
如果还需要映射端口到公网IP上用，防火墙>端口转发设置下就行了。你的 公网IP:端口号 或 DDNS域名:端口号 即可访问       

![4](https://user-images.githubusercontent.com/73426989/150644796-362a6d79-0932-4963-a217-c11866219fe7.jpg)

提示：如果是自动挂载的，不可在开机时热拔插硬盘，否则硬盘会被识别成新加入的例如sdb1挂载点。            
插好后重启一次即可恢复挂载到sda1，或者手动挂载确保不变动一劳永逸。                  


[返回主页](https://boduoyejieyi666.github.io/whonolikeboduoyejieyi/)       

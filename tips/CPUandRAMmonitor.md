# 查看系统CPU\RAM等资源实时负载情况命令

![photo_2022-01-22_22-25-45](https://user-images.githubusercontent.com/73426989/150642451-2dd0e63b-f73c-4f38-b29a-410c58aab8cc.jpg)             

查看系统CPU\RAM等资源实时负载情况命令：          

```
htop
```
如果你的固件没有预装htop程序，那么一般情况下固件自带的软件源都发行有htop，通过opkg安装即可，依次执行以下两条命令：              

```
opkg update
opkg install htop
```

然后再执行命令:        

```
htop
```

如图所示我的有0、1、2、3四个CPU核心负载实时情况            
htop本身内存占用也仅0.2%，而netdata实时监控内存占用1.4%而且还是常开...               
学会使用htop命令就可软件包管理中移除臃肿的netdata了              
通过htop也可以看到哪些不用却在开机默认运行的系统资源开销也很大的软件，不必需的可以移除此软件                   


[返回主页](../README.md)             



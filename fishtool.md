![1](https://user-images.githubusercontent.com/73426989/121067643-e0606880-c7fd-11eb-8673-6a8747853c20.png)     

# 编译入门秘籍（授人以鱼不如授人以渔）

## 选择op分叉主体         

推荐：[coolsnowwolf/lede](https://github.com/coolsnowwolf/lede) （建议默认分支）     

备选1：[ImmortalWrt](https://github.com/immortalwrt/immortalwrt) （建议默认分支）       
备选2：[Lienol/openwrt](https://github.com/Lienol/openwrt) (建议默认分支)        

其他：        
* [coolsnowwolf/openwrt-gl-ax1800](https://github.com/coolsnowwolf/openwrt-gl-ax1800)         


## 如果需要手动添加ssrp、passwall、openclash等各种丰富插件      

注意：此插件库“不保证”所有插件适配所有版本LuCI，推荐coolsnowwolf/lede可确保最大程度兼容。       
在拉取的op分叉主体的源码的feeds.conf.default文件中添加：    

```
src-git kenzo https://github.com/kenzok8/openwrt-packages     
src-git small https://github.com/kenzok8/small
```

↑这是神秘网友kenzok8（eS..）复制揉合的插件库，各种插件可以说是应有尽有，多star和issue提建议可以促使作者积极更新 [小白福音](https://github.com/kenzok8/openwrt-packages) 哦     
              
## 接下来三步走

```
./scripts/feeds update -a
```
```
./scripts/feeds install -a
```
```
make menuconfig
```
        
## menuconfig怎么选        

如何选到你的设备，例如R2S、X86_64、ACRH17这些设备怎么选到，请你谷歌一下“xxx openwrt编译”，找几个博客看一下就知道位置在哪了...        
选好设备后，接下来几个你可能刚需的设置点：       

* Extra Packages > autocore、autosamba、automount、ipv6helper         
无论软硬路由都可勾选了，没坏处。         

* Network > Firewall > ip6tables > ip6tables-extra、ip6tables-mod-nat        
都勾了。         

* LuCI > Themes >          
一般不建议勾选bootstrap、material之外的主题       
`如果你非要argon那么注意：lede源码里的argon是非常简陋的基础版argon，不是你想要的老竭力魔改版argon，请注意勾选 argonne 、argonV3 等字眼的主题，他们才是老竭力修改版argon`        

* LuCI > Applications >         
MTK MIPS架构的几个K2P、新三什么的必选mtwifi否则没无线信号,如果没看到mtwifi选项那就无所谓了，可能大雕调整了mtwifi的位置并且默认选上了，你不用操心了。          
其他的软路由无需操心wifi驱动。                   
硬路由一般爬墙插件类只勾选ssrplus : ssr client + xray (xray兼容v2ray、trojan、ss，硬路由勾选ssrp下面这两个就够用了，再多K2P一定超空间出不来固件)       
其他的爬墙插件则不建议为硬路由勾选。 
还有一些adbyby plus什么的几把玩意就别为硬路由勾选了,软路由也没必要勾选，去广告本来就不可避免有误伤。            
软路由就无脑ssrp全勾+passwall全勾+openclash全勾+其他你知道的用过的一些什么各种文件服务器、VPN服务端、qos、TTYD、uu加速器......眼熟的都可以选，不熟的别选。               

![1](https://user-images.githubusercontent.com/73426989/121642667-69f48c80-cac3-11eb-9034-e67292c4a701.png)        

## 开始编译（插件越多越容易死掉）  
```
make V=99
```


[返回主页](./README.md)        

# passwall指定特定网站走特定节点

## 提醒：
* Passwall的网站分流模块虽然名字是“Xray分流”，但不是很多小白理解的字面意思上的“只能分流Xray内核支持的协议的节点”，这个认识是完全错误的。Passwall可以分流ssr等任何协议（只要是能添加到passwall节点列表的）的节点，不要再传什么只支持v2ray节点谣言了。                    
* 分流一般前提是你有两个或以上的节点已经填好了在你的节点列表中（一般都是机场订阅一堆节点在里面）                           
* 部分半吊子作者编译的固件可能没有勾选进geodata等初始规则库，导致首次使用passwall网站分流模式的用户启动失败，解决办法请看：[这里](./passwallURLfenliuFail.md)

## 建立分流总节点
目前passwall 节点列表里 出厂会自带一个已经建立好的“分流总节点”，如下图：       
![图片](https://user-images.githubusercontent.com/73426989/155841248-b167c5be-5cfb-4f40-9e95-16542cf13b08.png)           
如果您手贱删除弄没了这个 分流总节点 ，也没事，手动添加回来的流程是：             
![图片](https://user-images.githubusercontent.com/73426989/155841262-517c1ae1-46f2-40b7-b19d-120538c549e5.png)         
![图片](https://user-images.githubusercontent.com/73426989/155841270-427a6d84-a1ba-4443-9aa3-a9df4bde0491.png)        
上图的 类型 可选Xray或者V2ray，它们的 传输协议 里都有 分流 ，使用效果差不多。
建立好分流总节点后保存并应用即可。

## 选中使用分流总节点
![图片](https://user-images.githubusercontent.com/73426989/155841284-2e2955e5-35c3-40a0-ae1f-ae691603ae35.png)        
如上图，TCP节点选中你的分流总节点即可。           

## 分流总节点的编辑
* paswall-基本设置-模式-TCP/UDP代理模式 的设置是决定流量是否要被passwall代理，然后再由 分流总节点 或 你设置的 单一节点 来处理决定走什么线路代理。所以，基本设置-模式-TCP/UDP代理模式 中的 代理模式 一般是第一步，应该要设置的（但是！passwall的 访问控制 优先级高于 基本设置-模式-TCP/UDP代理模式，你可以在访问控制里随意控制某个设备的代理模式及线路，具体可见：[这里](./passwallTeDingSheBeiQuanJuDaiLi.md) ）。    
* 如上图，分流总节点自带了若干个常用的种类网站的规则，AD是广告，BT是种子，China是中国大陆境内网站和IP，需要哪个网站走什么节点，直接去选就行了。
* 默认 节点是指当你访问的网站的域名或IP都未被上面的任何一个分流规则匹配到，那么这个网站将会走 默认 节点代理访问。
* 默认前置代理 节点是套娃使用方式，意思是先通过这个 默认前置代理 的节点线路访问到 默认 节点的入口，再被 默认 节点代理访问到境外网站。此功能常用于需要靠一个访问速率快且稳定的前置代理节点去加速一个你刚需的国家的IP但是直连很慢的节点，简言之就是套娃加速一个你不得不用的地区的节点。
* 默认前置代理 节点 仅对 默认 节点起作用，不会把其他的网站分流节点套娃。

## 分流总节点里的规则没有你需要的？
* Passwall支持非常简单快速地添加用户自定义规则，如下图：    
![图片](https://user-images.githubusercontent.com/73426989/155841314-eb19480a-064f-4203-b0e4-21443ddd4031.png)          
找到Passwall-规则管理-V2ray/Xray分流规则，然后如下图，先填分流规则地备注名字，然后点击添加：        
![图片](https://user-images.githubusercontent.com/73426989/155841332-b2c1de04-20d0-415d-86eb-915d443e9cff.png)                  
上图还有一个需要注意的红字部分，这些规则匹配是有优先级的，越上越优先，你也可以自行调整规则优先级，它们右边都有上移下移按钮。                   

* 点击添加之后会跳到此规则的编辑模式，把你知道的此网站所属的域名或IP都填进去，别忘记 传输协议 还要如图勾选上包含哪些，一般http 和tls是肯定有的，至于你要访问的这个网站有没有bittorrent种子流量域名，那就得自己想办法确认了，如果你的机场不ban BT流量的话，那你无脑勾选上bittorrent协议也生效。          
![图片](https://user-images.githubusercontent.com/73426989/155841360-ed647432-5fc1-4ed1-8e07-bcea5b0d8af7.png)               

* 添加域名和IP这个部分，对于会抓包查看的高手来说不是问题，那么小白用户如何才能知道自己要建立分流的网站有哪些域名呢？只复制浏览器里任何人都看得到的一个主站的pornhub.com怎么可能够呢…有没有哪里有作业做好的给我抄抄呢？             
众多的第三方开源规则集可供你复制使用，比如推荐的：[v2fly](https://github.com/v2fly/domain-list-community/tree/master/data)          
![图片](https://user-images.githubusercontent.com/73426989/155841390-c6ee87bf-d769-478c-a97f-a50023d4b3c8.png)            
如上图，先访问到规则集网站，然后按 Ctrl+F 键开启浏览器字符查找，输入举例子的telegram 文件名，会定位到文件位置，如果有的话，如下图:                
![图片](https://user-images.githubusercontent.com/73426989/155841405-2bcf264e-b715-48a5-bbb8-4c79bb76af57.png)         
点击进去，复制并粘贴到你的passwall自建的规则编辑框内：          
![图片](https://user-images.githubusercontent.com/73426989/155841415-ae53dc32-556d-411f-8a42-1388e2e1fae2.png)            
保存并应用即可回到分流总节点编辑界面去指定你要这个网站走什么节点了。               



[返回主页](../README.md)        





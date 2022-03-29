# 网关代理/旁路由

![图片](https://user-images.githubusercontent.com/73426989/150648408-d74c9acd-e70a-46ea-b190-cf3de26c9368.png)               

网关代理即所谓“旁路由”模式下，国内的网站访问失败或缓慢。                 
可尝试在如图位置的防火墙规则中添加规则：            

```
iptables -t nat -I POSTROUTING -j MASQUERADE
```

最后别忘记点击重启防火墙！                 



[返回主页](https://boduoyejieyi666.github.io/whonolikeboduoyejieyi/)               



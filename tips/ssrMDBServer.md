# SSRMuDB服务端启用          

大陆家里搭建 SSR 线路供人在国外时 回国 看B站爱奇艺              

前提：有动态公网IP且绑好了DDNS域名。                

如图在VPN菜单下找到并启用SSR MuDB，小白化设置界面，是人类几乎都不用教就会设置相关参数启用了。       

![1](https://user-images.githubusercontent.com/73426989/150643972-3969e01d-dab7-4527-a8e0-84f59b75c37b.jpg)        

![2](https://user-images.githubusercontent.com/73426989/150643978-87683444-0654-4611-8463-37dc860878bc.png)             

设置完毕启用成功后，需要端口转发放行你设置的SSR端口，在网络>防火墙>端口转发 操作      

![3](https://user-images.githubusercontent.com/73426989/150644002-59980a1f-3a1d-416c-80ef-305f1f857714.png)        

其他网关代理模式和二级路由的同理想办法放行端口到公网即可。               
之后就可以在国外通过SSR线路回来了（注意规则别忘记是回国模式）            
服务器地址是：ddns域名            
自己用就够了，家用宽带上行就30Mbps，别想着卖给留学生开回国机场了。。。                 


[返回主页](../README.md)                


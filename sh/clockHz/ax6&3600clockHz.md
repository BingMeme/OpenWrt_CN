# 检测AX6/AX3600的CPU真实时钟频率        

不要被现在某些所谓 ax6 / ax3600 超频固件迷惑了，实际上只是显示了一个更大的数字，并无任何性能提升。           

可通过以下两种方式获取真实的时钟频率：        

一：手动      
1. 下载 [mhz-aarch64](https://github.com/BingMeme/OpenWrt_CN/raw/main/sh/clockHz/mhz-aarch64) 并上传到ax6/ax3600 openwrt系统的某一目录。           
2. 然后在同目录下执行`chmod +x ./mhz-aarch64`赋予执行权限               
3. 然后继续同目录下执行`./mhz-aarch64`即可开始检测真实的实时频率。          

二：
懒人可用一键命令：       
`curl -O https://raw.githubusercontent.com/BingMeme/OpenWrt_CN/main/sh/clockHz/mhz-aarch64 && chmod +x ./mhz-aarch64 && ./mhz-aarch64`       
或           
`wget --no-check-certificate https://raw.githubusercontent.com/BingMeme/OpenWrt_CN/main/sh/clockHz/mhz-aarch64 && chmod +x ./mhz-aarch64 && ./mhz-aarch64`
       

本页面消息全部搬运自天灵大神的频道：        
<script async src="https://telegram.org/js/telegram-widget.js?19" data-telegram-post="nanopi_r2s/504" data-width="100%"></script>           


[返回主页](https://bingmeme.github.io/OpenWrt_CN/)  

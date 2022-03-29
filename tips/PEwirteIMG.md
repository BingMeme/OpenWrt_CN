# PE写盘

PE下兼容性较好的1.2版本DiskImg：[下载](https://github.com/boduoyejieyi666/whonolikeboduoyejieyi/releases/tag/v1.2-DiskImg)            

* PE中写入img到硬盘            
* 软路由硬盘一般是0号位，实在不放心的话，可以在PE系统里：          
执行快捷键         

```
win+R
```

再在新窗口里回车执行          

```
diskpart
```

然后再到diskpart控制台中:            
执行            

```
list disk
```

即可看到盘位号及空间大小，供你判断哪个是你希望的软路由系统盘              
建议先用分区工具把要写入的硬盘的已有分区都删除了，然后新建一个ext4分区                   



[返回主页](https://boduoyejieyi666.github.io/whonolikeboduoyejieyi/)           




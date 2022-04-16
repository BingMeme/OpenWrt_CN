# 固件格式

* ext4 ：可以扩展磁盘空间大小
* squashfs ：可以使用 重置功能（恢复出厂设置）
* efi : efi引导，非BIOS引导（优先使用efi固件，无法启动时再换无efi固件）   
* rootfs ：不带引导，可自行定义用grub或者syslinux来引导      
* combined ：带引导 
* .img ：物理机使用
* .vmdk ：虚拟机 ESXi/VMware 使用
* .qcow2 ：虚拟机 PVE 使用
* .vdi ：虚拟机 VirtualBox 使用
* .vhdx ：虚拟机 Hyper-V 使用    
* .tar：容器 Docker、LXC 使用
* IPK.zip压缩文件是随固件一起提供的ipk，包括未集成到固件里的一些例如dockerman，仅适用于同目录下的固件，其他人编译的固件不保证可用!               


[返回主页](../README.md)        


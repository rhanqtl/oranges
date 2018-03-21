# 第2章 搭建你的工作环境
## 2.1 虚拟计算机Bochs
### 2.1.2 Bochs的安装
Linux：
```
sudo apt-get install bochs bochs-x bximage vgabios
```
### 2.1.3 Bochs的使用
制作软盘映像

将引导扇区写入软盘：
```
dd if=boot.bin of=boot.img bs=512 count=1 conv=notrunc
```
使用参数`conv=notrunc`是为了避免软盘映像文件boot.img被截断，因为boot.bin比boot.img小

配置Bochs
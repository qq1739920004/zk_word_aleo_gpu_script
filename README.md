zkwork_aleo 矿工管理脚本
介绍
这是一个用于管理 zkwork_aleo 矿工程序的脚本，适用于 Ubuntu 系统。该脚本支持安装、运行、重启和卸载矿工程序。此文档还包括 HiveOS 的配置教程。

开发者
此脚本由 ZK.Work 的 DC 社区中 KarenL 开发。

特性
安装并运行 zkwork_aleo 挖矿程序
查看挖矿日志
重启 zkwork_aleo 挖矿程序
卸载 zkwork_aleo 挖矿程序
使用说明
Ubuntu 上的使用
下载脚本

bash
复制代码
wget <脚本下载地址> -O zkwork_aleo.sh
chmod +x zkwork_aleo.sh
运行脚本

使用 root 权限运行脚本：

bash
复制代码
sudo ./zkwork_aleo.sh
按照提示进行操作：

输入你的 Aleo 钱包地址
下载并解压矿工程序
设置自定义矿工名称
启动矿工程序
查看挖矿日志

确保矿工正在运行，然后使用以下命令查看日志：

bash
复制代码
tail -f aleo_prover/prover.log
重启矿工

脚本会停止并重启矿工程序：

bash
复制代码
sudo ./zkwork_aleo.sh
选择重启矿工选项。

卸载矿工

脚本会卸载矿工程序并删除相关文件：

bash
复制代码
sudo ./zkwork_aleo.sh
选择卸载矿工选项。

HiveOS 上的配置
获取 Aleo 钱包地址

从 Foxwallet、Leowallet、Puzzle Wallet 等获取 Aleo 钱包地址。

添加新的 Flight Sheet

安装 URL: 下载地址
哈希算法: aleo
钱包和工作模板: %WAL%
池 URL: aleo.hk.zk.work:10003
开始 Flight Sheet

在 HiveOS 控制面板中配置完 Flight Sheet 后，点击 "Start Flight Sheet" 启动挖矿程序。#   z k _ w o r d _ a l e o _ g p u _ s c r i p t  
 
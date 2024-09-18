# zkwork_aleo 挖矿一键脚本
## language
[English](./README_en.md)
## 介绍
- 加入[官方discord](https://discord.gg/cxURcWzz)
- 这是一个用于管理 zkwork_aleo 矿工程序的脚本，适用于 Ubuntu 系统。该脚本支持安装、运行、重启和卸载矿工程序。一键脚本是ubuntu，此文档还包括 HiveOS 的配置教程。
## 要求
- 操作系统版本：Ubuntu 20.04+
- Nvidia 驱动程序版本：535.54.03 +
## 使用说明
1. **一键下载并运行**

    ```bash
    wget https://raw.githubusercontent.com/qq1739920004/zk_word_aleo_gpu_script/master/zk_word_aleo_gpu_script.sh -O zkwork_aleo.sh  && chmod +x zkwork_aleo.sh && ./zkwork_aleo.sh
    ```
### 完整教程
1.**准备工作（创建钱包)**
- 谷歌浏览器下载一个[FoxWallet钱包](https://chromewebstore.google.com/search/FoxWallet%20%7C%20Aleo%20Wallet?hl=zh-CN&utm_source=ext_sidebar)插件，
- 创建一个ALEO钱包
![image](https://github.com/user-attachments/assets/0026acb6-7696-410f-bfe6-3a6a5f9447b7)

- 钱包创建好之后复制钱包地址
- 
![image](https://github.com/user-attachments/assets/da2bfe4c-7979-48da-a683-26481af286b7)

- 然后就可以开始挖矿了

2.**运行脚本**

![image](https://github.com/user-attachments/assets/8704a162-04d9-435e-b474-e39cf6dea1c3)


3.**查看日志**
- 发现日志出现算力之后就代表成功运行了
![image](https://github.com/user-attachments/assets/e3abdfd8-c0d7-46c8-b644-da98b91c6b8a)

4.**查看收益**
- 前往 [zkwork](https://zk.work/)搜索自己的钱包地址就可以看到总收益跟算力曲线 
- 超过3个ALEO才会打款，每天9点开始
![image](https://github.com/user-attachments/assets/b824b301-2229-4875-b1b1-66049533aa8f)
**教程结束**

### 常见问题
1.**查看每一百万（MH）算力实时收益**
- aleo.info 的首页 24 Hour Data 栏目
- 前往 [zkwork的aleo网站](https://aleo.info/) 的首页 24 Hour Data 栏目查看

2.**挖矿奖励打款时间**
- 每 24 小时向矿工支付一次奖励，直接打入启动挖矿软件时填写的 address。如果待支付金额不足 3 ALEO，将不会支付。相关参数可能会根据 Aleo 的 gas 情况随时调整
- [更多问题参考官方解释](https://github.com/6block/zkwork_aleo_gpu_worker/blob/master/FAQ_zh.md)

### HiveOS 上的配置

1. **获取 Aleo 钱包地址**

   -  从 Foxwallet、Leowallet、Puzzle Wallet 等获取 Aleo 钱包地址。

2. **添加新的 Flight Sheet**

    - **安装 URL**: [下载地址](https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.1-hot/aleo_prover-v0.1.1_hot.tar.gz)
    - **哈希算法**: aleo
    - **钱包和工作模板**: %WAL%
    - **池 URL**: aleo.hk.zk.work:10003
官方连接：（https://github.com/6block/zkwork_aleo_gpu_worker/blob/master/README.md）
3. **开始 Flight Sheet**

  -  在 HiveOS 控制面板中配置完 Flight Sheet 后，点击 "Start Flight Sheet" 启动挖矿程序。
## 开发者

此脚本由 ZK.Work 的 DC 社区中 KarenL 开发。

## 功能

- 1.一键安装并运行 zkwork_aleo 挖矿程序
- 2.查看挖矿日志
- 3.重启 zkwork_aleo 挖矿程序
- 4.卸载 zkwork_aleo 挖矿程序



# zkwork_aleo 挖矿一键脚本

## 介绍

这是一个用于管理 zkwork_aleo 矿工程序的脚本，适用于 Ubuntu 系统。该脚本支持安装、运行、重启和卸载矿工程序。一键脚本是ubuntu，此文档还包括 HiveOS 的配置教程。
## 使用说明
1. **一键下载并运行**

    ```bash
    wget https://raw.githubusercontent.com/qq1739920004/zk_word_aleo_gpu_script/master/zk_word_aleo_gpu_script.sh -O zkwork_aleo.sh  && chmod +x zkwork_aleo.sh && ./zkwork_aleo.sh
    ```
### 图文教程
1.**运行脚本**

![image](https://github.com/user-attachments/assets/8704a162-04d9-435e-b474-e39cf6dea1c3)



2.**查看日志**

![image](https://github.com/user-attachments/assets/e3abdfd8-c0d7-46c8-b644-da98b91c6b8a)





### 文字教程

1. **一键下载并运行**

    ```bash
    wget https://github.com/qq1739920004/zk_word_aleo_gpu_script/edit/master/zk_word_aleo_gpu_script.sh -O zkwork_aleo.sh  && chmod +x zkwork_aleo.sh && ./zkwork_aleo.sh
    ```

2. **运行脚本**

    使用 root 权限运行脚本：

    ```bash
    sudo ./zkwork_aleo.sh
    ```

    按照提示进行操作：

    - 输入你的 Aleo 钱包地址
    - 下载并解压矿工程序
    - 设置自定义矿工名称
    - 启动矿工程序

3. **查看挖矿日志**

    确保矿工正在运行，然后使用以下命令查看日志：

    ```bash
    tail -f aleo_prover/prover.log
    ```

4. **重启矿工**

    脚本会停止并重启矿工程序：

    ```bash
    sudo ./zkwork_aleo.sh
    ```

    选择重启矿工选项。

5. **卸载矿工**

    脚本会卸载矿工程序并删除相关文件：

    ```bash
    # 停止矿工
    pkill -f run_prover.sh
    # 删除安装文件
    rm -rf aleo_prover
    rm -f aleo_prover-v0.1.1_hot.tar.gz
    ```

    选择卸载矿工选项。

### HiveOS 上的配置

1. **获取 Aleo 钱包地址**

    从 Foxwallet、Leowallet、Puzzle Wallet 等获取 Aleo 钱包地址。

2. **添加新的 Flight Sheet**

    - **安装 URL**: [下载地址](https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.1-hot/aleo_prover-v0.1.1_hot.tar.gz)
    - **哈希算法**: aleo
    - **钱包和工作模板**: %WAL%
    - **池 URL**: aleo.hk.zk.work:10003
官方连接：（https://github.com/6block/zkwork_aleo_gpu_worker/blob/master/README.md）
3. **开始 Flight Sheet**

    在 HiveOS 控制面板中配置完 Flight Sheet 后，点击 "Start Flight Sheet" 启动挖矿程序。
## 开发者

此脚本由 ZK.Work 的 DC 社区中 KarenL 开发。

## 功能

- 1.一键安装并运行 zkwork_aleo 挖矿程序
- 2.查看挖矿日志
- 3.重启 zkwork_aleo 挖矿程序
- 4.卸载 zkwork_aleo 挖矿程序



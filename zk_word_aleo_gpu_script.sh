#!/bin/bash

# 开发者信息
DEVELOPER="ZK.Work 的 DC 社区中 KarenL"

# 检查是否以 root 用户运行脚本
if [ "$(id -u)" != "0" ]; then
    echo "此脚本需要以 root 用户权限运行。"
    echo "请尝试使用 'sudo -i' 命令切换到 root 用户，然后再次运行此脚本。"
    exit 1
fi

# 安装并运行 zkwork_aleo 挖矿程序
function install_and_run_miner() {
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工
   wget https://raw.githubusercontent.com/qq1739920004/zk_word_aleo_gpu_script/master/zk_word_aleo_gpu_script.sh -O zkwork_aleo.sh  && chmod +x zkwork_aleo.sh && ./zkwork_aleo.sh

    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.1_hot.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^ALGO=.*$/ALGO=aleo/" run_prover.sh
    sed -i "s/^ADDRESS=.*$/ADDRESS=$aleo_address/" run_prover.sh
    sed -i "s/^MINER_NAME=.*$/MINER_NAME=$miner_name/" run_prover.sh

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &

    # 自动查看日志
    tail -f /root/aleo_prover/prover.log
}

# 查看挖矿日志
function view_logs() {
    tail -f /root/aleo_prover/prover.log
}

# 重启 zkwork_aleo 挖矿程序
function restart_miner() {
    # 停止运行的矿工
    pkill -f run_prover.sh

    # 确保矿工程序已停止
    sleep 5

    # 重新启动矿工
    cd /root/aleo_prover
    ./run_prover.sh &

    # 自动查看日志
    tail -f /root/aleo_prover/prover.log
}

# 卸载 zkwork_aleo 挖矿程序
function uninstall_miner() {
    # 停止矿工
    pkill -f run_prover.sh

    # 删除安装文件
    rm -rf /root/aleo_prover
    rm -f /root/aleo_prover-v0.1.1_hot.tar.gz

    echo "矿工程序已卸载。"
}

# 主菜单
function main_menu() {
    while true; do
        clear
        echo "Ubuntu 上的 zkwork_aleo 矿工管理脚本"
        echo "开发者: $DEVELOPER"
        echo "==========================="
        echo "1. 安装并运行 zkwork_aleo 挖矿程序"
        echo "2. 查看挖矿日志"
        echo "3. 重启 zkwork_aleo 挖矿程序"
        echo "4. 卸载 zkwork_aleo 挖矿程序"
        echo "5. 退出脚本"
        read -p "请输入选项（1-5）: " OPTION

        case $OPTION in
        1) install_and_run_miner ;;
        2) view_logs ;;
        3) restart_miner ;;
        4) uninstall_miner ;;
        5) exit 0 ;;
        *) echo "无效选项。" ;;
        esac
        echo "按任意键返回主菜单..."
        read -n 1
    done
}

# 显示主菜单
main_menu

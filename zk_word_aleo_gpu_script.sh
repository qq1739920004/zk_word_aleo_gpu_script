#!/bin/bash

# 开发者信息
DEVELOPER="ZK.Work 的 DC 社区中 KarenL"

# 检查是否以 root 用户运行脚本
if [ "$(id -u)" != "0" ]; then
    echo "此脚本需要以 root 用户权限运行。"
    echo "请尝试使用 'sudo -i' 命令切换到 root 用户，然后再次运行此脚本。"
    exit 1
fi

function  install_and_run_miner_pre_v0_1_2(){
 

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（标准版 v0.1.2）
   wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.2/aleo_prover-v0.1.2_pre.tar.gz
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address
    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.2_pre.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^reward_address=.*$/reward_address=$aleo_address/" inner_prover.sh
    sed -i "s/^custom_name=\".*\"$/custom_name=\"$miner_name\"/" inner_prover.sh

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &
    wait  # 等待进程结束
    # 提示用户矿工已启动
    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。" 
}
function install_and_run_miner_v0_1_2(){
  

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（标准版 v0.1.2）
    wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.2/aleo_prover-v0.1.2_stable.tar.gz
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address
    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.2_stable.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^reward_address=.*$/reward_address=$aleo_address/" inner_prover.sh
    sed -i "s/^custom_name=\".*\"$/custom_name=\"$miner_name\"/" inner_prover.sh

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &
    wait

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。" 
}
# 安装并运行 zkwork_aleo 挖矿程序（标准版 v0.1.1）
function install_and_run_miner_v0_1_1() {
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（标准版 v0.1.1）
    wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.1/aleo_prover-v0.1.1.tar.gz

    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.1.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^reward_address=.*$/reward_address=$aleo_address/" run_prover
    sed -i "s/^custom_name=\".*\"$/custom_name=\"$miner_name\"/" run_prover

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。"
    view_logs
}

# 安装并运行 zkwork_aleo 挖矿程序（hot 版本 v0.1.1）
function install_and_run_hot_miner_v0_1_1() {
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（hot 版本 v0.1.1）
    wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.1-hot/aleo_prover-v0.1.1_hot.tar.gz

    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.1_hot.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^reward_address=.*$/reward_address=$aleo_address/" run_prover.sh
    sed -i "s/^custom_name=\".*\"$/custom_name=\"$miner_name\"/" run_prover.sh

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。"
    view_logs
}

# 安装并运行 zkwork_aleo 挖矿程序（hot 版本 v0.1.0）
function install_and_run_hot_miner_v0_1_0() {
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（hot 版本 v0.1.0）
    wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.1-hot/aleo_prover-v0.1.0_hot.tar.gz

    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.0_hot.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^reward_address=.*$/reward_address=$aleo_address/" run_prover.sh
    sed -i "s/^custom_name=\".*\"$/custom_name=\"$miner_name\"/" run_prover.sh

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。"
    view_logs
}

# 安装并运行 zkwork_aleo 挖矿程序（标准版 v0.1.0）
function install_and_run_miner_v0_1_0() {
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（标准版 v0.1.0）
    wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.0/aleo_prover-v0.1.0.tar.gz

    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.0.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^reward_address=.*$/reward_address=$aleo_address/" run_prover.sh
    sed -i "s/^custom_name=\".*\"$/custom_name=\"$miner_name\"/" run_prover.sh

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。"
    view_logs
}

# 查看挖矿日志
function view_logs() {
    tail -f /root/aleo_prover/prover.log
}

# 重启 zkwork_aleo 挖矿程序
function restart_miner() {
    echo "正在重启 zkwork_aleo 挖矿程序..."

    # 重新执行 run_prover.sh
    cd /root/aleo_prover || { echo "无法进入目录 /root/aleo_prover"; exit 1; }
    ./run_prover.sh &

    # 确认矿工是否已成功启动
    echo "矿工已成功重启！"
}

# 卸载 zkwork_aleo 挖矿程序
function uninstall_miner() {
    # 停止矿工
    pkill -f run_prover.sh

    # 删除安装文件
    rm -rf /root/aleo_prover
    rm -f /root/aleo_prover-v0.1.1_hot.tar.gz
    rm -f /root/aleo_prover-v0.1.0_hot.tar.gz
    rm -f /root/aleo_prover-v0.1.0.tar.gz

    echo "矿工程序已卸载。"
}
 
# 主菜单
function main_menu() {
    while true; do
        clear
        echo "zk.work社区一键 zkwork_aleo 脚本"
        echo "开发者: $DEVELOPER"
        echo "==========================="
        echo "v0.1.2两个版本驱动版本跟CUDA要求较高，如果太低可能会出现
        Failed to create GpuPuzzle:Failed to create aleo prover
note:run with RUST BACKTRACE=1 environment variable to display a backtrace"
        echo "1. 安装并运行 zkwork_aleo 挖矿程序（v0.1.2-stable)）"
        echo "2. 安装并运行 zkwork_aleo 挖矿程序（v0.1.2-pre,(cpu好选这个）"
        echo "3. 安装并运行 zkwork_aleo 挖矿程序（标准版 v0.1.1）"
        echo "4. 安装并运行 zkwork_aleo 挖矿程序（hot 版本 v0.1.1）"
        echo "5. 安装并运行 zkwork_aleo 挖矿程序（hot 版本 v0.1.0）"
        echo "6. 安装并运行 zkwork_aleo 挖矿程序（标准版 v0.1.0）"
        echo "7. 查看挖矿日志"
        echo "8. 重启 zkwork_aleo 挖矿程序"
        echo "9. 卸载 zkwork_aleo 挖矿程序"
        echo "10. 退出脚本"
        read -p "请输入选项（1-10）: " OPTION

        case $OPTION in
        1) install_and_run_miner_v0_1_2 ;;
        2) install_and_run_miner_pre_v0_1_2 ;;
        3) install_and_run_miner_v0_1_1 ;;
        4) install_and_run_hot_miner_v0_1_1 ;;
        5) install_and_run_hot_miner_v0_1_0 ;;
        6) install_and_run_miner_v0_1_0 ;;
        7) view_logs ;;
        8) restart_miner ;;
        9) uninstall_miner ;;
        10) exit 0 ;;
        *) echo "无效选项。" ;;
        esac
        echo "按任意键返回主菜单..."
        read -n 1
    done
}

# 显示主菜单
main_menu

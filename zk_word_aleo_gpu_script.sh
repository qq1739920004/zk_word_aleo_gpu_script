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
    wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.1/aleo_prover-v0.1.1.tar.gz

    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.1.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^reward_address=.*$/reward_address=$aleo_address/" run_prover.sh
    sed -i "s/^custom_name=\".*\"$/custom_name=\"$miner_name\"/" run_prover.sh

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &

    # 启动进程监控
    monitor_process &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'top' 命令查看进程状态。"
}

# 安装并运行 zkwork_aleo 挖矿程序（hot 版本）
function install_and_run_hot_miner() {
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（hot 版本）
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

    # 启动进程监控
    monitor_process &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'top' 命令查看进程状态。"
}

# 安装并运行 zkwork_aleo 挖矿程序（hot 版本 0.1.0）
function install_and_run_hot_miner_v0_1_0() {
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（hot 版本 0.1.0）
    wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.0/aleo_prover-v0.1.0_hot.tar.gz

    # 解压和进入目录
    tar -zvxf aleo_prover-v0.1.0_hot.tar.gz && cd aleo_prover

    # 更新 Aleo 地址并设置自定义矿工名称
    read -p "输入自定义矿工名称: " miner_name
    sed -i "s/^reward_address=.*$/reward_address=$aleo_address/" run_prover.sh
    sed -i "s/^custom_name=\".*\"$/custom_name=\"$miner_name\"/" run_prover.sh

    # 启动矿工
    chmod +x run_prover.sh
    ./run_prover.sh &

    # 启动进程监控
    monitor_process &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'top' 命令查看进程状态。"
}

# 安装并运行 zkwork_aleo 挖矿程序（标准版 0.1.0）
function install_and_run_miner_v0_1_0() {
    # 获取 Aleo 钱包地址
    read -p "输入你的 Aleo 钱包地址: " aleo_address

    # 切换到 /root 目录
    cd /root

    # 下载 zkwork 矿工（标准版 0.1.0）
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

    # 启动进程监控
    monitor_process &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'top' 命令查看进程状态。"
}

# 查看挖矿日志
function view_logs() {
    tail -f /root/aleo_prover/prover.log
}

# 重启 zkwork_aleo 挖矿程序
function restart_miner() {
    echo "正在重启 zkwork_aleo 挖矿程序..."

    # 停止当前的矿工进程
    pkill -f run_prover.sh

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
    rm -f /root/aleo_prover-v0.1.1.tar.gz
    rm -f /root/aleo_prover-v0.1.1_hot.tar.gz
    rm -f /root/aleo_prover-v0.1.0_hot.tar.gz
    rm -f /root/aleo_prover-v0.1.0.tar.gz

    echo "矿工程序已卸载。"
}

# 更新脚本
function update_script() {
    local script_url="https://example.com/path/to/your/latest_script.sh"
    local script_file="/root/latest_script.sh"
    
    echo "正在下载最新版本的脚本..."
    wget -O $script_file $script_url
    
    if [ $? -eq 0 ]; then
        echo "脚本下载成功。"
        echo "正在替换当前脚本..."
        mv $script_file /root/$(basename $0)
        chmod +x /root/$(basename $0)
        echo "脚本更新成功。"
    else
        echo "脚本下载失败，请检查网络连接或脚本 URL。"
    fi
}

# 监控进程
function monitor_process() {
    local process_name="aleo_prover"
    local check_interval=5  # 监控间隔时间
    local is_running=false

    while true; do
        sleep $check_interval

        if pgrep -f "$process_name" > /dev/null; then
            # 进程存在，表示运行正常
            if ! $is_running; then
                echo "$(date) 监控到程序正常运行，$process_name 正在运行。" >> /root/aleo_prover/prover.log
                is_running=true
            fi
        else
            # 进程不存在，表示程序未运行
            if $is_running; then
                echo "$(date) 发现 $process_name 未运行，准备重新启动程序..." >> /root/aleo_prover/prover.log

                # 重新启动矿工
                restart_miner

                # 在 prover.log 文件中记录重启日志
                echo "$(date) 程序已重新启动。" >> /root/aleo_prover/prover.log

                # 将状态重置为“不正常”
                is_running=false
            fi
        fi
    done
}

# 脚本主菜单
function main_menu() {
    echo "选择操作："
    echo "1. 安装并运行 zkwork_aleo 挖矿程序（标准版）"
    echo "2. 安装并运行 zkwork_aleo 挖矿程序（hot 版本）"
    echo "3. 安装并运行 zkwork_aleo 挖矿程序（hot 版本 0.1.0）"
    echo "4. 卸载 zkwork_aleo 挖矿程序"
    echo "5. 更新脚本"
    echo "6. 查看挖矿日志"
    echo "7. 退出"
    
    read -p "请输入选项 [1-7]: " option
    case $option in
        1) install_and_run_miner ;;
        2) install_and_run_hot_miner ;;
        3) install_and_run_hot_miner_v0_1_0 ;;
        4) uninstall_miner ;;
        5) update_script ;;
        6) view_logs ;;
        7) exit 0 ;;
        *) echo "无效选项，请重新选择。" ;;
    esac
}

# 执行主菜单
main_menu

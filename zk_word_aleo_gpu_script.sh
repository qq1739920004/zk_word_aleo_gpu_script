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

    # 启动日志监控
    monitor_ports_log &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。"
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

    # 启动日志监控
    monitor_ports_log &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。"
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

    # 启动日志监控
    monitor_ports_log &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。"
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

    # 启动日志监控
    monitor_ports_log &

    # 提示用户矿工已启动
    echo "矿工已启动！"
    echo "你可以使用 'tail -f /root/aleo_prover/prover.log' 命令来查看日志。"
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

# 监控日志文件
function monitor_ports_log() {
    local log_file="/root/aleo_prover/prover.log"
    local check_interval=80  # 每次检查之间的间隔时间（秒）
    local max_no_update_time=80  # 如果在此时间内未更新日志，则重启（秒）

    # 获取文件最后修改时间
    local last_mod_time=$(stat -c %Y "$log_file" 2>/dev/null || echo 0)

    while true; do
        sleep $check_interval

        if [ -f "$log_file" ]; then
            # 获取当前文件的最后修改时间
            local current_mod_time=$(stat -c %Y "$log_file")

            # 如果文件最后修改时间没有变化，且超过指定时间
            if (( current_mod_time == last_mod_time )); then
                echo "prover.log 文件在过去 $max_no_update_time 秒内没有更新，准备重新启动矿工..." | tee -a "$log_file"

                # 重启矿工
                restart_miner

                # 在 prover.log 文件中记录重启日志
                echo "矿工程序于 $(date) 重启。" >> "$log_file"

                # 更新最后修改时间
                last_mod_time=$(stat -c %Y "$log_file")
            else
                # 文件有更新，表示运行正常
                echo "监控到程序正常运行，prover.log 正在更新。" | tee -a "$log_file"

                # 更新最后修改时间
                last_mod_time=$current_mod_time
            fi
        else
            echo "无法找到 prover.log 文件，可能矿工未正确启动。"
        fi
    done

}

# 主菜单
function main_menu() {
    while true; do
        clear
        echo "zk.word社区一键 zkwork_aleo 脚本"
        echo "开发者: $DEVELOPER"
        echo "==========================="
        echo "1. 安装并运行 zkwork_aleo 挖矿程序（最新版）"
        echo "2. 安装并运行 zkwork_aleo 挖矿程序（最新hot 版本）"
        echo "3. 安装并运行 zkwork_aleo 挖矿程序（hot 版本 0.1.0）"
        echo "4. 安装并运行 zkwork_aleo 挖矿程序（标准版 0.1.0）"
        echo "5. 查看挖矿日志"
        echo "6. 重启 zkwork_aleo 挖矿程序"
        echo "7. 卸载 zkwork_aleo 挖矿程序"
        echo "9. 退出脚本"
        read -p "请输入选项（1-9）: " OPTION

        case $OPTION in
        1) install_and_run_miner ;;
        2) install_and_run_hot_miner ;;
        3) install_and_run_hot_miner_v0_1_0 ;;
        4) install_and_run_miner_v0_1_0 ;;
        5) view_logs ;;
        6) restart_miner ;;
        7) uninstall_miner ;;
        9) exit 0 ;;
        *) echo "无效选项。" ;;
        esac
        echo "按任意键返回主菜单..."
        read -n 1
    done
}

# 显示主菜单
main_menu

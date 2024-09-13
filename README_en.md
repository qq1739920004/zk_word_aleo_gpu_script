# zkwork_aleo Miner Management Script

## Introduction

This script is used for managing the zkwork_aleo miner program on Ubuntu systems. It supports installing, running, restarting, and uninstalling the miner program. The script is designed for Ubuntu, but this document also includes a configuration guide for HiveOS.

## Usage Instructions

1. **One-click Download and Run**

    ```bash
    wget https://raw.githubusercontent.com/qq1739920004/zk_word_aleo_gpu_script/master/zk_word_aleo_gpu_script.sh -O zkwork_aleo.sh && chmod +x zkwork_aleo.sh && ./zkwork_aleo.sh
    ```

### Visual Tutorial

1. **Run the Script**

    ![image](https://github.com/user-attachments/assets/8b90dd11-600a-4bd8-864d-c5f6f7896808)

2. **View Logs**

    ![image](https://github.com/user-attachments/assets/608bfc26-509f-42fe-8361-ec207c3f58ae)

### Text Tutorial

1. **One-click Download and Run**

    ```bash
    wget https://github.com/qq1739920004/zk_word_aleo_gpu_script/edit/master/zk_word_aleo_gpu_script.sh -O zkwork_aleo.sh && chmod +x zkwork_aleo.sh && ./zkwork_aleo.sh
    ```

2. **Run the Script**

    Run the script with root permissions:

    ```bash
    sudo ./zkwork_aleo.sh
    ```

    Follow the prompts to:

    - Enter your Aleo wallet address
    - Download and extract the miner program
    - Set a custom miner name
    - Start the miner program

3. **View Mining Logs**

    Ensure the miner is running, then use the following command to view logs:

    ```bash
    tail -f aleo_prover/prover.log
    ```

4. **Restart the Miner**

    The script will stop and restart the miner program:

    ```bash
    sudo ./zkwork_aleo.sh
    ```

    Choose the restart miner option.

5. **Uninstall the Miner**

    The script will uninstall the miner program and delete related files:

    ```bash
    # Stop the miner
    pkill -f run_prover.sh
    # Delete installation files
    rm -rf aleo_prover
    rm -f aleo_prover-v0.1.1_hot.tar.gz
    ```

    Choose the uninstall miner option.

### Configuration on HiveOS

1. **Obtain Aleo Wallet Address**

    Obtain your Aleo wallet address from Foxwallet, Leowallet, Puzzle Wallet, etc.

2. **Add a New Flight Sheet**

    - **Install URL**: [Download Link](https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.1.1-hot/aleo_prover-v0.1.1_hot.tar.gz)
    - **Hash Algorithm**: aleo
    - **Wallet and Work Template**: %WAL%
    - **Pool URL**: aleo.hk.zk.work:10003

3. **Start the Flight Sheet**

    After configuring the Flight Sheet in the HiveOS dashboard, click "Start Flight Sheet" to begin mining.

## Developer

This script was developed by KarenL from the DC community of ZK.Work.

## Features

- 1. One-click installation and running of the zkwork_aleo mining program
- 2. Viewing mining logs
- 3. Restarting the zkwork_aleo mining program
- 4. Uninstalling the zkwork_aleo mining program

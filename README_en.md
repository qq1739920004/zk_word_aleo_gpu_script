# zkwork_aleo One-Click Mining Script

## Language
[中文](./README.md)

## Introduction
- Join the [official Discord](https://discord.gg/cxURcWzz)
- This is a script designed to manage the zkwork_aleo miner program, suitable for Ubuntu systems. The script supports installation, running, restarting, and uninstalling the miner program. The one-click script is for Ubuntu, and this document also includes configuration instructions for HiveOS.

## Requirements
- Operating system version: Ubuntu 20.04+
- Nvidia driver version: 535.54.03 +

## Instructions

1. **One-Click Download and Run**

    ```bash
    wget https://raw.githubusercontent.com/qq1739920004/zk_word_aleo_gpu_script/master/zk_word_aleo_gpu_script.sh -O zkwork_aleo.sh  && chmod +x zkwork_aleo.sh && ./zkwork_aleo.sh
    ```

### Full Tutorial

1. **Preparation (Creating a Wallet)**

   - Download the [FoxWallet](https://chromewebstore.google.com/search/FoxWallet%20%7C%20Aleo%20Wallet?hl=en&utm_source=ext_sidebar) plugin from Google Chrome,
   - Create an ALEO wallet

   ![image](https://github.com/user-attachments/assets/0026acb6-7696-410f-bfe6-3a6a5f9447b7)

   - Once the wallet is created, copy the wallet address, and you're ready to start mining

   ![image](https://github.com/user-attachments/assets/da2bfe4c-7979-48da-a683-26481af286b7)

2. **Run the Script**

   ![image](https://github.com/user-attachments/assets/8704a162-04d9-435e-b474-e39cf6dea1c3)

3. **Check Logs**
   - Once you see hash power appearing in the logs, it means the miner is running successfully
   ![image](https://github.com/user-attachments/assets/e3abdfd8-c0d7-46c8-b644-da98b91c6b8a)

4. **Check Earnings**
   - Go to [zkwork](https://zk.work/) and search for your wallet address to view total earnings and hash power charts
   - Payments are made once your balance exceeds 3 ALEO, every day at 9:00 AM
   ![image](https://github.com/user-attachments/assets/b824b301-2229-4875-b1b1-66049533aa8f)

**End of Tutorial**

### FAQ

1. **Check Real-Time Hash Power Earnings per MH**

   - View the 24-hour data section on the aleo.info homepage
   - Visit the 24-hour data section on the [zkwork aleo website](https://aleo.info/)

2. **Mining Rewards Payment Time**

   - Mining rewards are paid once every 24 hours directly to the address provided when starting the mining software. If the pending amount is less than 3 ALEO, no payment will be made. Parameters may change depending on Aleo's gas situation.
   - [More FAQs and official explanations](https://github.com/6block/zkwork_aleo_gpu_worker/blob/master/FAQ_zh.md)

### HiveOS Configuration

1. **Get Aleo Wallet Address**

   - Obtain an Aleo wallet address from Foxwallet, Leowallet, Puzzle Wallet, etc.

2. **Add a New Flight Sheet**

   - **Install URL**: [Download Link](https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/v0.2.1/aleo_prover-v0.2.1.tar.gz)
   - **Hash Algorithm**: aleo
   - **Wallet and Worker Template**: %WAL%
   - **Pool URL**: aleo.hk.zk.work:10003

   Official Link: [zkwork_aleo GPU Worker](https://github.com/6block/zkwork_aleo_gpu_worker/blob/master/README.md)

3. **Start Flight Sheet**

   - After configuring the Flight Sheet in the HiveOS control panel, click "Start Flight Sheet" to start the mining process.

## Developer

This script was developed by KarenL in the DC community of ZK.Work.

## Features

1. One-click installation and running of the zkwork_aleo mining program
2. View mining logs
3. Restart the zkwork_aleo mining program
4. Uninstall the zkwork_aleo mining program

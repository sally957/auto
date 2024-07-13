#!/bin/bash

# 更新软件包索引
sudo apt update

# 安装 Firefox 浏览器
sudo apt install -y firefox

# 安装 net-tools 网络工具
sudo apt install -y net-tools
sudo apt install -y gedit

#繼續python
sudo apt install -y python3-pip
sudo python3 -m pip install --upgrade pip

sudo python3 -m pip install torch==2.1.2+cu118 torchvision==0.16.2+cu118 -f https://download.pytorch.org/whl/torch_stable.html
sudo python3 -m pip install torchaudio==2.1.2+cu118 -f https://download.pytorch.org/whl/torch_stable.html
sudo python3 -m pip install onnxruntime-gpu==1.15.1
sudo python3 -m pip install onnxruntime==1.18.0

#繼續apache
sudo apt install -y apache2
sudo apt install -y apache2 libapache2-mod-wsgi-py3
sudo apt install -y php libapache2-mod-php php-mysql
sudo a2enmod php8.1
sudo systemctl restart apache2

#繼續防火牆
sudo apt install -y ufw
sudo ufw allow 443/tcp  # HTTPS
sudo ufw allow 80/tcp   # HTTP
sudo ufw allow 22/tcp   # SFTP
sudo ufw enable


# 安装 Ubuntu 桌面环境
sudo apt install -y ubuntu-desktop

# 重启系统
sudo reboot now -h

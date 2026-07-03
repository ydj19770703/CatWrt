#!/bin/bash
# 修改后台管理IP为192.168.2.1
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 设置root登录密码：123456
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF./$1$x9H1vYtM$z8X7dF5g6hJ9kL0mN2pQr/g' package/base-files/files/etc/shadow

# 更换国内阿里云软件源，下载更快
sed -i 's#https://mirrors.tuna.tsinghua.edu.cn/openwrt#https://mirrors.aliyun.com/openwrt#g' feeds.conf.default

# 集成OpenClash科学插件
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
# bui# build

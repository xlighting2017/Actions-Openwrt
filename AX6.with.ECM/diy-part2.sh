#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate

# 修正连接数
echo 'net.netfilter.nf_conntrack_max=65536' >> package/base-files/files/etc/sysctl.d/10-default.conf

# 使用原始最新版本，而不是上游package里面的
rm -rf ./feeds/luci/applications/luci-app-openclash
git clone --depth=1 -b patch-1 https://github.com/xlighting2017/OpenClash.git package/luci-app-openclash

# add mosdns
git clone -b v5 https://github.com/sbwml/luci-app-mosdns.git package/mosdns

# import cpufreq from immortalwrt
git clone --filter=blob:none --sparse https://github.com/immortalwrt/immortalwrt
cd immortalwrt
git sparse-checkout add package/emortal/cpufreq
cp -Rf package/emortal/cpufreq ../package/cpufreq
cd ..


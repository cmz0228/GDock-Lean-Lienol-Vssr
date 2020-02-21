#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone https://github.com/Lienol/openwrt-package package/openwrt-package
git clone https://github.com/pymumu/smartdns.git package/smartdns
./scripts/feeds update -a
./scripts/feeds install -a

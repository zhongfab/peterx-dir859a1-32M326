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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i 's/IMAGE_SIZE := 15872k/IMAGE_SIZE := 32256k/g' ./target/linux/ath79/image/generic.mk
sed -i 's/0xf80000/0x1f80000/g' ./target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
sed -i 's/0xff0000/0x1ff0000/g' ./target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts

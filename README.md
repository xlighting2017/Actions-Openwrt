Building OpenWrt with GitHub Actions

## Device Supported

Official/mainline
- armsr (arm image used by QEMU)
- ipq807x (Redmi AX6, mainline Kernel 6.6.X, **no ANY Offloading**)
- ipq40xx (ASUS ACRH-17)
- MT798x (Qihoo 360T7, mainline Kernel 6.6.X with WED)
- rockchip (FriendlyArm nanoPi R2S and R5C)
- sunxi (FriendlyArm nanoPi Neo2, R1S H5, OrangePi Zero Plus, ***ALL without WiFi***)
- x86_64, using Immortalwrt's OpenWrt as upstream

Community Builds
- ipq807x (Redmi AX6, Qosmio, with NSS offloading, Kernel 6.6.X, nss-drv & nss-ecm **and wifi-offloading**)
- ipq6000 (ZN M2 /cmiot AX18, with NSS offloading, Kernel 6.6.X, nss-drv & nss-ecm **and wifi-offloading**, **NOT TESTED _yet_**)
- MT798x (Qihoo 360T7, Kernel 5.4 with mediatek_hnat + mtwifi)
- N1 (Amlogic S905d, using custom/ophub Kernel + Armsr)
- QEMU (qemu, using custom/ophub Kernel + Armsr)


## Tips

- Reduced `.config` file to better customize the firmware.
- Sperate Action/config file to generate different FWs.


## Compile and release cycle:

- Compile: triggered by upstream changes
  - keep workflow runs for 3 days
  - and last 2 runs older than 3 days will be kept too

- Release: only keep latest 3 releases


## Credits(listed in no particular order)

- [ImmmortalWrt (ipq4000/ACRH-17, ipq807x/AX6, MT798x/360T7, rockchip/R2S, sunxi/nanoPi, X86_64, Armsr)](https://github.com/immortalwrt/immortalwrt)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [Robimarko (IPQ807x/AX6)](https://github.com/robimarko/openwrt/)
- [Bitthief (IPQ807x/AX6 with ECM)](https://github.com/bitthief/openwrt/)
- [AgustinLorenzo (IPQ807x/AX6 with ECM)](https://github.com/AgustinLorenzo/openwrt)
- [dimfishr (IPQ807x/AX6 with ECM)](https://github.com/dimfishr/openwrt/tree/qualcommax-6.x-nss-wifi)
- [Qosmio (IPQ807x/AX6 with ECM+wifi-offloading)](https://github.com/qosmio/openwrt-ipq/tree/qualcommax-6.x-nss-wifi)
- [sdf8057 (IPQ6000/ZN M2, kernel 4.4.X)](https://github.com/sdf8057/ipq6000)
- [King-Of-Knights (IPQ6000/ZN M2, kernel 6.6.X, with ECM+wifi-offloading)](https://github.com/King-Of-Knights/openwrt-6.x)
- [hanwckf (MT798x/360T7, 5.4 kernel with mediatek_hnat + mtwifi)](https://github.com/hanwckf/immortalwrt-mt798x)
- [Flippy (unifreq/openwrt_packit)](https://github.com/unifreq/openwrt_packit)
- [ophub (amlogic-s9xxx-openwrt)](https://github.com/ophub/amlogic-s9xxx-openwrt)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [ncipollo/release-action](https://github.com/ncipollo/release-action)
- [Mattraks/delete-workflow-runs](https://github.com/Mattraks/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)



## License
MIT

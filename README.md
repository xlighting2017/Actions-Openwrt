Building OpenWrt with GitHub Actions

## Device Supported

- Redmi AX6 (~~with or~~ without NSS offloading)
- N1 (Amlogic S905d, using custom Kernel + ArmVirt)
- sunxi (nanoPi Neo2, R1S H5 with ***weak*** WiFi, OrangePi Zero Plus)
- Rockchip (nanoPi R2S and R4S)
- ipq6000 (ZN M2 /cmiot AX18, **no WiFi _yet_**)
- ipq40xx (ASUS ACRH-17)
- MT798x (Qihoo 360T7)
- x86_64, using Lean/immortalwrt OpenWrt as upstream

## Tips

- Reduced `.config` file to better customize the firmware.
- Sperate Action/config file to generate different FWs.


## Compile and release cycle:

- Compile: triggered by upstream changes
  - keep workflow runs for 3 days
  - and last 2 runs older than 3 days will be kept too

- Release: only keep latest 3 releases


## Credits

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [ImmmortalWrt](https://immortalwrt.org/)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
- [Flippy (N1/S905d)](https://github.com/unifreq/openwrt_packit)
- [ophub (amlogic-s9xxx-openwrt)](https://github.com/ophub/amlogic-s9xxx-openwrt)
- [sdf8057 (ipq6000/ZN M2)](https://github.com/sdf8057/ipq6000)
- [hanwckf (MT798x/360T7)](https://github.com/hanwckf/immortalwrt-mt798x)
- [Robimarko](https://github.com/robimarko/openwrt/)
- [Bitthief](https://github.com/bitthief/openwrt/)
- [Ansuel](https://github.com/Ansuel/openwrt/)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)



## License
MIT

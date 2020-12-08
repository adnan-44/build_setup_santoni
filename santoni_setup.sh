## starting of script
echo "starting setting up device side repo...."
echo "Device tree.."
rm -rf device/xiaomi/santoni && git clone https://github.com/Jabiyeff/device-santoni -b crDroid7-staging device/xiaomi/santoni
echo "Vendor tree.."
rm -rf vendor/xiaomi/santoni && git clone https://github.com/Jabiyeff/vendor-santoni -b 11.0 vendor/xiaomi
echo "Kernel tree.."
rm -rf kernel/xiaomi/msm8937 && git clone https://github.com/Jabiyeff/msm-4.9-santoni-kud -b eleven kernel/xiaomi/msm8937
echo "..."
echo "..."
echo "Setting up hals...."
rm -rf hardware/qcom-caf/msm8996/audio && git clone https://github.com/Jabiyeff/android_hardware_qcom_audio -b lineage-18.0-caf-msm8996 hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/display && git clone https://github.com/Jabiyeff/android_hardware_qcom_display -b caf-msm8996-r hardware/qcom-caf/msm8996/display
rm -rf hardware/qcom-caf/msm8996/media && git clone https://github.com/Jabiyeff/android_hardware_qcom_media -b caf-msm8996-r hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/wlan && git clone https://github.com/Jabiyeff/android_hardware_qcom-caf_wlan -b lineage-18.0-caf hardware/qcom-caf/wlan
echo "..."
echo "..."
echo " Now custom"
rm -rf prebuilts/clang/host/linux-x86/clang-12.0 && git clone https://github.com/kdrag0n/proton-clang/ -b master --depth 1 prebuilts/clang/host/linux-x86/clang-12.0
rm -rf vendor/codeaurora/telephony && git clone https://github.com/Jabiyeff/android_vendor_codeaurora_telephony -b 11.0 vendor/codeaurora/telephony
echo "finishing...."
echo "Done."



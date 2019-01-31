cmd_arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dtb := ../scripts/gcc-wrapper.py /home/david/dorado/toolchain/arm-eabi/bin/gcc -E -Wp,-MD,arch/arm/boot/dts/qcom/.msm8909w-swoctp-1gb.dtb.d.pre.tmp -nostdinc -I../arch/arm/boot/dts -I../arch/arm/boot/dts/include -I../drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/qcom/.msm8909w-swoctp-1gb.dtb.dts.tmp ../arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dtb -b 0 -i ../arch/arm/boot/dts/qcom/  -d arch/arm/boot/dts/qcom/.msm8909w-swoctp-1gb.dtb.d.dtc.tmp arch/arm/boot/dts/qcom/.msm8909w-swoctp-1gb.dtb.dts.tmp ; cat arch/arm/boot/dts/qcom/.msm8909w-swoctp-1gb.dtb.d.pre.tmp arch/arm/boot/dts/qcom/.msm8909w-swoctp-1gb.dtb.d.dtc.tmp > arch/arm/boot/dts/qcom/.msm8909w-swoctp-1gb.dtb.d

source_arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dtb := ../arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dts

deps_arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dtb := \
  ../arch/arm/boot/dts/qcom/msm8909w-swoctp.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-mtp.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909.dtsi \
  ../arch/arm/boot/dts/qcom/skeleton64.dtsi \
  ../arch/arm/boot/dts/include/dt-bindings/clock/msm-clocks-8909.h \
  ../arch/arm/boot/dts/include/dt-bindings/clock/msm-clocks-a7.h \
  ../arch/arm/boot/dts/qcom/msm8909-ion.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-smp2p.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-ipcrouter.dtsi \
  ../arch/arm/boot/dts/qcom/msm-gdsc-8916.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-iommu.dtsi \
  ../arch/arm/boot/dts/qcom/msm-iommu-v2.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-iommu-domains.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-gpu.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-coresight.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-bus.dtsi \
  ../arch/arm/boot/dts/include/dt-bindings/msm/msm-bus-ids.h \
    $(wildcard include/config/noc.h) \
  ../arch/arm/boot/dts/include/dt-bindings/msm/msm-bus-rule-ops.h \
  ../arch/arm/boot/dts/qcom/msm8909-mdss.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-mdss-panels.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-sim-video.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-sim-cmd.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-hx8394d-720p-video.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-sharp-qhd-video.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-truly-wvga-cmd.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-hx8394d-qhd-video.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-hx8379a-fwvga-skua-video.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-ili9806e-fwvga-video.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-hx8379c-fwvga-video.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-hx8394d-480p-video.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-auo-qvga-cmd.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-auo-cx-qvga-cmd.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-auo-400p-cmd.dtsi \
  ../arch/arm/boot/dts/qcom/dsi-panel-everdisplay-rm67160-400p-cmd.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-mdss-pll.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-pinctrl.dtsi \
  ../arch/arm/boot/dts/qcom/batterydata-palladium.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909w-gpu.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-pm8916.dtsi \
  ../arch/arm/boot/dts/qcom/msm-pm8916-rpm-regulator.dtsi \
  ../arch/arm/boot/dts/qcom/msm-pm8916.dtsi \
  ../arch/arm/boot/dts/qcom/msm8916-regulator.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-pm8916-camera.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909-pm8916-pm.dtsi \
  ../arch/arm/boot/dts/include/dt-bindings/msm/pm.h \
  ../arch/arm/boot/dts/qcom/msm8909-pm8916-mtp.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909w.dtsi \
  ../arch/arm/boot/dts/qcom/msm8909w-memory.dtsi \

arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dtb: $(deps_arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dtb)

$(deps_arch/arm/boot/dts/qcom/msm8909w-swoctp-1gb.dtb):

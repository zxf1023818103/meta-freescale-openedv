FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE:openedv-imx6ull-evk = "(.)"

SRC_URI:append:openedv-imx6ull-evk:use-mainline-bsp = " \
    file://0001-LAN8720A.patch \
    file://openedv-imx6ull-evk.dts \
    file://openedv_imx6ull_evk_defconfig \
"

do_configure:prepend:openedv-imx6ull-evk() {
    cp ${WORKDIR}/openedv-imx6ull-evk.dts ${S}/arch/arm/boot/dts
}

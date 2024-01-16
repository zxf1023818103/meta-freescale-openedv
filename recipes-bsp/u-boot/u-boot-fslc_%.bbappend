FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE:openedv-imx6ull-evk = "(.)"

SRC_URI:append:openedv-imx6ull-evk:use-mainline-bsp = " \
    file://0001-LAN8720A.patch \
    file://openedv_imx6ull_evk_defconfig \
    file://openedv-imx6ull-evk.dts \
    file://openedv_imx6ull_evk.h \
    file://imximage.cfg \
    file://Makefile \
    file://openedv_imx6ull_evk.c \
    file://plugin.S \
    file://Kconfig \
"

do_configure:prepend:openedv-imx6ull-evk() {
    cp ${WORKDIR}/openedv-imx6ull-evk.dts ${S}/arch/arm/dts
    cp ${WORKDIR}/openedv_imx6ull_evk_defconfig ${S}/configs
    cp ${WORKDIR}/openedv_imx6ull_evk.h ${S}/include/configs
    mkdir -p ${S}/board/openedv/openedv-imx6ull-evk
    cp ${WORKDIR}/openedv_imx6ull_evk.c ${S}/board/openedv/openedv-imx6ull-evk
    cp ${WORKDIR}/imximage.cfg ${S}/board/openedv/openedv-imx6ull-evk
    cp ${WORKDIR}/Makefile ${S}/board/openedv/openedv-imx6ull-evk
    cp ${WORKDIR}/plugin.S ${S}/board/openedv/openedv-imx6ull-evk
    cp ${WORKDIR}/Kconfig ${S}/board/openedv/openedv-imx6ull-evk
}


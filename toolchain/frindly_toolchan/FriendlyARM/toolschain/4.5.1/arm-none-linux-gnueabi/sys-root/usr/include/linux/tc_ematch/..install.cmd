cmd_/opt/FriendlyARM/toolschain/4.5.1/arm-none-linux-gnueabi/sys-root/usr/include/linux/tc_ematch/.install := perl /work/toolchain/build/src/linux-2.6.35.4/scripts/headers_install.pl /work/toolchain/build/src/linux-2.6.35.4/include/linux/tc_ematch /opt/FriendlyARM/toolschain/4.5.1/arm-none-linux-gnueabi/sys-root/usr/include/linux/tc_ematch arm tc_em_cmp.h tc_em_meta.h tc_em_nbyte.h tc_em_text.h; perl /work/toolchain/build/src/linux-2.6.35.4/scripts/headers_install.pl /work/toolchain/build/arm-none-linux-gnueabi/build/build-kernel-headers/include/linux/tc_ematch /opt/FriendlyARM/toolschain/4.5.1/arm-none-linux-gnueabi/sys-root/usr/include/linux/tc_ematch arm ; touch /opt/FriendlyARM/toolschain/4.5.1/arm-none-linux-gnueabi/sys-root/usr/include/linux/tc_ematch/.install
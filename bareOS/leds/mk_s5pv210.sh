INCLUDE=/home/kent/workspace/s5pv210/ramdisk/s5pv210.include
if [ -f "$INCLUDE" ];then
	. $INCLUDE
else
	echo "$INCLUDE : no such file or directory"
	exit
fi
TARGET_BIN="210.bin led.bin"
[ "$1" = "clean" ] && make clean && exit
make clean
make CROSS_COMPILE=$CROSS_COMPILE_PREFIX 

[ -d "$BARE_OS_BIN" ] && echo "install complete" && cp $TARGET_BIN $BARE_OS_BIN && exit
echo "$BARE_OS_BIN : no such file or directory"




INCLUDE=/home/kent/workspace/s5pv210/ramdisk/s5pv210.include
if [ -f "$INCLUDE" ];then
	. $INCLUDE
else
	echo "$INCLUDE : no such file or directory"
	exit
fi
[ "$1" = "clean" ] && make clean && exit

make CROSS_COMPILE=$CROSS_COMPILE_PREFIX  arch=arm

[ -d "$BARE_OS_BIN" ] && echo "install complete" && cp $TARGET_BIN $BARE_OS_BIN && exit
echo "$BARE_OS_BIN : no such file or directory"




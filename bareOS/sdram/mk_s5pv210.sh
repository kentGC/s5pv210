INCLUDE=/home/kent/workspace/s5pv210/ramdisk/s5pv210.include
if [ -f "$INCLUDE" ];then
	. $INCLUDE
else
	echo "$INCLUDE : no such file or directory"
	exit
fi
TARGET_BIN=""
for dir in `ls`
do
	[ ! -d "$dir" ] && continue
	cd $dir
	make clean
	[ "$1" != "clean" ] && make CROSS_COMPILE=$CROSS_COMPILE_PREFIX 
	cd -
done

[ "$1" = "clean" ] && exit
[ -d "$BARE_OS_BIN" ] && echo "install complete" && cp $TARGET_BIN $BARE_OS_BIN && exit
echo "$BARE_OS_BIN : no such file or directory"




INCLUDE=/home/kent/workspace/s5pv210/ramdisk/s5pv210.include
if [ -f "$INCLUDE" ];then
        . $INCLUDE
else
        echo "$INCLUDE : no such file or directory"
        exit
fi

usage()
{
	echo "**************************************************"
	echo "$1 : <option>"
	echo "	option:"
	echo "		build clean"
	echo "**************************************************"

}

clean_function()
{
	cd $BAREOS_SROUCE_DIR && ./mk_s5pv210.sh clean && cd -
	
	rm -rf $BARE_OS_BIN
}
build_function()
{
	[ ! -d $BARE_OS_BIN ] && mkdir $BARE_OS_BIN
	cd $BAREOS_SROUCE_DIR && ./mk_s5pv210.sh && cd -

}

case "$1" in
	"clean")
		clean_function
	;;
	"build")
		build_function all
	;;
	*)
		usage $0
	;;
esac

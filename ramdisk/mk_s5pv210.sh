INCLUDE=/home/kent/workspace/s5pv210_project/ramdisk/s5pv210.include
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

}
build_function()
{
	mkdir $BARE_OS_BIN
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

INCLUDE=/home/kent/workspace/s5pv210/ramdisk/s5pv210.include
if [ -f "$INCLUDE" ];then
        . $INCLUDE
else
        echo "$INCLUDE : no such file or directory"
        exit
fi

for i in `ls`
do
	[ -d "$i" ]&& echo "##############################compile $ii start##################"&&cd $i && ./mk_s5pv210.sh $1 && echo "##############################compile $i end################" &&cd -
done

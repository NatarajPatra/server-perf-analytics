disk_io_util=`iostat -x xvda 1 10 |grep -i xvda|tail -1 |awk '{print $16 }'`


disk_io_util1=`echo ${disk_io_util%.*}`


if [ $disk_io_util1 -ge 95 ]
then
	        logger DISK IO fault detected for utilisation value of $disk_io_util1
	fi

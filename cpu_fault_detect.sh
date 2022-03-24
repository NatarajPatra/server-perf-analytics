cpu_util=`sar -u 1 30 |tail -1|awk {'print $8 '}`


cpu_util1=`echo ${cpu_util%.*}`
r=$(echo "(100 - $cpu_util1)"| bc -l)

if [ $r -ge 95 ]
then 
	logger CPU fault detected for utilisation value of $r
fi

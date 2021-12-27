echo "***********************************************************">>/scripts/log/benchmark.log
echo " load test start time `date `                 ">>/scripts/log/benchmark.log
echo "***********************************************************">>/scripts/log/benchmark.log
# ps -ef|grep -i random_load_stress_ab.sh|grep -v grep
count=`ps -ef|grep -i ab|grep -v grep|wc -l`
if [ $count =  0 ]
	then 
#for list in `ps  -ef|grep -i ab |grep -v grep|awk '{print $2}'`
#do
#kill -9 $list
#done
ab -n 10000  -c 1000 -H "Accept-Encoding: gzip, deflate" -rk http://0.0.0.0/ >>/scripts/log/benchmark.log
echo "***********************************************************">>/scripts/log/benchmark.log
echo " load test End time `date `                 ">>/scripts/log/benchmark.log
echo "***********************************************************">>/scripts/log/benchmark.log
fi

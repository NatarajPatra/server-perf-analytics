echo "***********************************************************">>/scripts/log/benchmark.log
echo " Random load test start time `date '+%d-%m %H:%M:%S'`                 ">>/scripts/log/benchmark.log
echo "***********************************************************">>/scripts/log/benchmark.log
for list in `ps  -ef|grep -i ab |grep -v grep|awk '{print $2}'`
do
kill -9 $list
done
sleep 5
for list in `ps  -ef|grep -i ab |grep -v grep|awk '{print $2}'`
do
kill -9 $list
done
echo "***********************************************************">>/scripts/log/ps.log
echo " Random ps ab test start time `date '+%d-%m %H:%M:%S' `                 ">>/scripts/log/ps.log
echo "***********************************************************">>/scripts/log/ps.log
ps  -ef|grep -i ab |grep -v grep >>/scripts/log/ps.log
my_count=`ps  -ef|grep -i ab |grep -v grep |wc -l`
if [ $my_"count = 0 ]
then
ab -n 900000  -c 10000 -H "Accept-Encoding: gzip, deflate" -rk http://0.0.0.0/ >>/scripts/log/benchmark.log
fi
dd if=/dev/xvda of=/dev/null bs=512M &
sleep 300
ps_dd=ps -ef |grep -i /dev/null |grep -v grep|awk '{print $2}'`

kill -9 $ps_dd
echo "***********************************************************">>/scripts/log/benchmark.log
echo " Random load test End time `date '+%d-%m %H:%M:%S'`                 ">>/scripts/log/benchmark.log
echo "***********************************************************">>/scripts/log/benchmark.log

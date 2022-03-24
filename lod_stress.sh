# stress --cpu 80  --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 1;}'< /proc/meminfo)k --vm-keep -m 60 --io `nproc` --hdd `nproc` --hdd-bytes 30GB --timeout 120s
echo "Random load stress start time `date '+%d-%m %H:%M:%S'` ">>/scripts/log/random_stress.txt
/usr/bin/stress --cpu 40 --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 0.9;}' < /proc/meminfo)k --vm-keep -m 60 --timeout 300s
yes>/dev/null  &
sleep 300
my_pid=`ps -ef|grep -i yes|grep -v grep |awk '{print $2}'`
kill -9 $my_pid
echo "Random load stress END time `date '+%d-%m %H:%M:%S'` ">>/scripts/log/random_stress.txt

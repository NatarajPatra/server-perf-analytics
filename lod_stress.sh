# stress --cpu 80  --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 1;}'< /proc/meminfo)k --vm-keep -m 60 --io `nproc` --hdd `nproc` --hdd-bytes 30GB --timeout 120s
echo "Random load stress start time `date` ">>/scripts/log/random_stress.txt
/usr/bin/stress --cpu 40 --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 0.9;}' < /proc/meminfo)k --vm-keep -m 60 --timeout 300s
echo "Random load stress END time `date` ">>/scripts/log/random_stress.txt

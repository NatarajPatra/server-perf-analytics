pidstat -rud -h 1 5 >>/scripts/log/perf_mon.csv
dstat --time --cpu --net --disk --sys --load --proc --mem 1 30 >>/scripts/log/perf_mon_summ.csv

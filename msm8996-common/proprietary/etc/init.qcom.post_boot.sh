#!/system/bin/sh

echo 0 > /proc/sys/kernel/sched_freq_aggregate
echo 90 > /proc/sys/kernel/sched_spill_load
echo 1 > /proc/sys/kernel/sched_prefer_sync_wakee_to_waker
echo 40 > /proc/sys/kernel/sched_init_task_load
echo 3000000 > /proc/sys/kernel/sched_freq_inc_notify
echo 25 > /proc/sys/kernel/sched_downmigrate
echo 45 > /proc/sys/kernel/sched_upmigrate

echo 280000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 280000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq

echo 20 > /sys/module/cpu_boost/parameters/input_boost_ms
echo "0:1280000 2:0" > /sys/module/cpu_boost/parameters/input_boost_freq

echo cfq > /sys/block/mmcblk0/queue/scheduler
echo 512 > /sys/block/mmcblk0/queue/read_ahead_kb
echo 0 > /sys/block/mmcblk0/queue/iostats
echo 256 > /sys/block/mmcblk0/queue/nr_requests
echo 0 > /sys/block/mmcblk0/queue/iosched/slice_idle

chmod -R 644 /sys/devices/system/cpu/cpu0/cpufreq/interactive
echo 20000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_rate
echo 180000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_slack
echo 38000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/max_freq_hysteresis
echo 0 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/enable_prediction
echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/io_is_busy
echo 0 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/ignore_hispeed_on_notif
echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/use_sched_load
echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/use_migration_notif
echo "58000 1280000:98000 1580000:58000" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay
echo 0 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/boostpulse_duration
echo 98 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/go_hispeed_load
echo 1180000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/hispeed_freq
echo 18000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/min_sample_time
echo "80 380000:9 580000:36 780000:62 880000:71 980000:87 1080000:75 1180000:98" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads

chmod -R 644 /sys/devices/system/cpu/cpu2/cpufreq/interactive
echo 20000 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/timer_rate
echo 180000 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/timer_slack
echo 38000 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/max_freq_hysteresis
echo 0 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/enable_prediction
echo 1 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/io_is_busy
echo 0 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/ignore_hispeed_on_notif
echo 1 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/use_sched_load
echo 1 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/use_migration_notif
echo "38000 1480000:98000 1880000:138000" > /sys/devices/system/cpu/cpu2/cpufreq/interactive/above_hispeed_delay
echo 0 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/boostpulse_duration
echo 98 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/go_hispeed_load
echo 1380000 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/hispeed_freq
echo 18000 > /sys/devices/system/cpu/cpu2/cpufreq/interactive/min_sample_time
echo "80 380000:39 480000:35 680000:29 780000:63 880000:71 1180000:91 1380000:83 1480000:98" > /sys/devices/system/cpu/cpu2/cpufreq/interactive/target_loads

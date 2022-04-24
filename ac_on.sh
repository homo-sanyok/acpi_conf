#!/bin/sh

echo 0 > /proc/sys/vm/laptop_mode
echo med_power_with_dipm > /sys/class/scsi_host/host0/link_power_management_policy
echo med_power_with_dipm > /sys/class/scsi_host/host1/link_power_management_policy
echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo ondemand > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo ondemand > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
echo ondemand > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
echo ondemand > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
echo ondemand > /sys/devices/system/cpu/cpu5/cpufreq/scaling_governor
echo ondemand > /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor
echo ondemand > /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
echo 130 > /sys/class/backlight/amdgpu_bl0/brightness
echo 130 > /sys/class/backlight/amdgpu_bl0/actual_brightness
lid = cat /proc/acpi/button/lid/LID0/state
open = "state:      closed"
if [$lid = $open]
then
        systemctl suspend
fi

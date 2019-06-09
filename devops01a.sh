#!/bin/bash
#Gets information about your computer including:
#number of volumes, size of each volume, free space on each volume
#number cpus/cores, information about the cpus/core
#amount of ram, your mac address and ip addresa
echo "================================================\n"
echo "Disk Stats\n"
echo "================================================\n"
df -h
echo "================================================\n"
echo "CPU & Cores Stats\n"
echo "================================================\n"
lscpu 
echo "================================================\n"
echo "RAM Stats\n"
echo "================================================\n"
cat /proc/meminfo
echo "================================================\n"
ifconfig -all
echo "================================================\n" 

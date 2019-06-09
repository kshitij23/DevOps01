#!/bin/bash
#Gets information about your computer including:
#number of volumes, size of each volume, free space on each volume
#number cpus/cores, information about the cpus/core
#amount of ram, your mac address and ip addresa
disk_stats ()
{

	echo "================================================"
	echo "Disk Stats"
	echo "================================================"
	df -h
	echo "================================================"
} 

cpu_stats ()
{
	echo "================================================"
	echo "CPU & Cores Stats"
	echo "================================================"
	lscpu 
	echo "================================================"
}

ram_stats ()
{
	echo "================================================"
	echo "RAM Stats"
	echo "================================================"
	vmstat -s
	echo "================================================"
}

network_stats ()
{
	echo "================================================"
	echo "Network stats"
        echo "================================================"
	ifconfig -a
	echo "================================================"
}

usage ()
{
	echo "Incorrect option. Usage: devops01b.sh (-volume | -cpu | -ram | -network | -all)"
}

if (( $# != 1 )) 
then 
    echo "illegal number of parameters"
    usage
    exit
fi

if [ "$1" == "-volume" ]
then	
	disk_stats
elif [ "$1" == '-cpu' ]
then 
	cpu_stats
elif [ "$1" == "-ram" ]
then 
	ram_stats
elif [ "$1" == "-network" ]
then 
	network_stats
elif [ "$1" == "-all" ]
then 
	disk_stats
	cpu_stats
	ram_stats
	network_stats
else 
     usage    
fi 

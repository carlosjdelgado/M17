#!/bin/sh

while true; do
	
	case `cat /sys/devices/platform/0gpio-keys/scaled` in
	  0)
		VOLUME=-1
		;;
	  1)
		VOLUME=0
		;;
	  2)
		VOLUME=4
		;;
	  3)
		VOLUME=6
		;;
	  4)
		VOLUME=8
		;;
	  5)
		VOLUME=10
		;;
	  6)
		VOLUME=12
		;;
	  7)
		VOLUME=14
		;;
	  8)
		VOLUME=16
		;;
	  9)
		VOLUME=18
		;;
	  10)
		VOLUME=20
		;;
	  11)
		VOLUME=22
		;;
	  12)
		VOLUME=24
		;;
	  13)
		VOLUME=26
		;;
	  14)
		VOLUME=28
		;;
	  15)
		VOLUME=30
		;;
	  *)
		echo "default volume"
		VOLUME=8
		;;
	esac
	
	amixer sset 'Master' $VOLUME,0

done

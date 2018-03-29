#!/bin/bash
# @Author: yongze.chen
# @Date:   2017-06-29 17:44:45
# @Last Modified by:   yongze.chen
# @Last Modified time: 2017-06-29 17:44:45


case $1 in 
	start)
		nohup ./go_cron 2>&1 >> info.log 2>&1 /dev/null &
		echo "服务已启动..."
		sleep 1
	;;
	stop)
		killall go_cron
		echo "服务已停止..."
		sleep 1
	;;
	restart)
		killall go_cron
		sleep 1
		nohup ./go_cron 2>&1 >> info.log 2>&1 /dev/null &
		echo "服务已重启..."
		sleep 1
	;;
	*) 
		echo "$0 {start|stop|restart}"
		exit 4
	;;
esac

#!/bin/sh
#update loacl date(conf back and note) to remote sever
cd ~/note
#date +%Y/%m/%d_%H:%M:%S
if [ "$1" == "" ]
then
	~/Mysoft/bin/gitupdate.sh '笔记备份'`date +%Y/%m/%d_%H:%M:%S`
else
	~/Mysoft/bin/gitupdate.sh $1'->笔记备份'`date +%Y/%m/%d_%H:%M:%S`
fi
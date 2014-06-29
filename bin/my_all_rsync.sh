#!/bin/sh
# 同步所有需要同步的东西,很耗时间!! 一般在晚上没事干的时候同步
# 同步目录
backdir=/media/zodiac1111/bcb95e11-a242-494e-bd4c-b88f5fd3308d/
echo "start rsync @" `date +"%Y-%m-%d %H:%M:%S"` >> /home/zodiac1111/rsync.log
rsync ~/ ${backdir}  -avH
#rsync '/home/zodiac1111/tmp/' ${backdir}/tmp/'  -avH
#rsync '/home/zodiac1111/Mysoft/' ${backdir}/Mysoft/' -avH
#rsync '/home/zodiac1111/Downloads/' '/media/usb0/Downloads/' -avH
#rsync '/home/zodiac1111/Documents/' '/media/usb0/Documents/' -avH
#rsync '/home/zodiac1111/Dropbox/' '/media/usb0/Dropbox/' -avH
#rsync '/home/zodiac1111/workspace/' '/media/usb0/workspace/' -avH
echo "end rsync @" $? `date +"%Y-%m-%d %H:%M:%S"` >> /home/zodiac1111/rsync.log
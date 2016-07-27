
#!/bin/sh
now=`date  +%Y-%m-%d:%H:%M:%S`
if ps -ef | grep -v grep | grep  pokecli.py; then
        echo  $now  " already running" >> cron.log
        echo  "bot already running"
        exit 0
else
        python pokecli.py > web/bot.log 2>&1 &

        echo $now " start..." >>  cron.log
        echo "bot starts"
        #mailing program
        exit 0
fi



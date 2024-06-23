# Cron Cheatsheet
## cronie github
https://github.com/cronie-crond/cronie

## creating SystemD daemon
```
sudo systemctl start cron
sudo systemctl start cronie
sudo systemctl enable cronie
```

## usage
```
export VISUAL=vim; crontab -e
```

## creating cron
### understanding syntax
```c
*  *  *  *  *       command_to_be_executed
-  -  -  -  -
|  |  |  |  |
|  |  |  |  +-----> day_of_the_week (0 - 6) (Sunday=0)
|  |  |  |
|  |  |  +--------> month (1 - 12)
|  |  |
|  |  +-----------> day_of_the_month (1 - 31)
|  |
|  +--------------> hour (0 - 23)
|
+-----------------> min (0 - 59)
```

### example
- reboot pc at 18:00
```
0 18 * * * /sbin/shutdown -r now
```


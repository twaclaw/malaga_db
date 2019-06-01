# Skin configuration for the smartphone version

The following files must be placed in `/etc/weewx/skins/Smartphone/`
*	`index.html.tmpl`
*	`radiation.html.tmpl`
*	`skin.conf`

# General configuration
`weewx.conf` is the general configuration located at `/etc/weewx/weewx.conf`

# Crontab jobs
* *transfer.sh*
	*	*/7 * * * *
* *transfer_db.sh*
	*	1 1 * * *
* *watchdog.sh*
	*	1 12 * * *


# WeeWX Installation
#### Installation
```bash
sudo apt-get update
sudo apt-get full-upgrade
wget http://www.weewx.com/downloads/weewx_VERSION.deb
sudo dpkg -i weewx_VERSION.deb
sudo apt-get install -f
```


#### Configure logs
```bash
sudo ln -s /etc/weewx/rsyslog.d/weewx.conf /etc/rsyslog.d
sudo /etc/init.d/rsyslog stop
sudo /etc/init.d/rsyslog start
sudo ln -s /etc/weewx/rsyslog.d/weewx.conf /etc/rsyslog.d/10-weewx.conf
sudo ln -s /etc/weewx/logrotate.d/weewx /etc/logrotate.d
```

#### Device configuration and verification
```bash
wee_device  --info
wee_device --set-interval=5
wee_device --set-time
sudo /etc/init.d/weewx status
```

#### Dump data from the console
Some time the web page gets stalled on a particular date.
This actions are automatically done if the current date  and the date displayed in the web page do no match. 

```bash
wee_device --dump
wee_device --clear-memory
```


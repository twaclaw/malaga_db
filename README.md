# Málaga Santander Colombia

SQLite database for this weather station:

* https://twaclaw.github.io/malaga/

![malaga](images/ws.jpg)

## WeeWX Installation
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

## Credits
* Fernando Sandoval (photo)
* [WeeWX: Open source software for your weather station](http://www.weewx.com/)

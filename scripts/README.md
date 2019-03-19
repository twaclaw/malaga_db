# Skin configuration for the smartphone version

The following files must be placed in `/etc/weewx/skins/Smartphone/`
*	`index.html.tmpl`
*	`radiation.html.tmpl`
*	`skin.conf`

# General configuration
`weewx.conf` is the general configuration located at `/etc/weewx/weewx.conf`

# Crontab jobs
* transfer.sh
	*	*/7 * * * *
* transfer_db.sh
	*	1 1 * * *

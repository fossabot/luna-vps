#!/bin/bash
# Sunday, July 15, 2018 (GMT+7)

# u root
if [[ "$(id -u)" != "0" ]]; then
	exit
fi

# bak
if [[ ! -f "/etc/sysctl.conf.bak" ]]; then
	cp -b /etc/sysctl.conf /etc/sysctl.conf.bak
fi

if [[ ! -d "/etc/nginx/conf.d.bak" ]]; then
	cp -R /etc/nginx/conf.d /etc/nginx/conf.d.bak
fi

if [[ ! -d "/etc/fail2ban/filter.d.bak" ]]; then
	cp -R /etc/fail2ban/filter.d /etc/fail2ban/filter.d.bak
fi

if [[ ! -d "/etc/security.bak" ]]; then
	cp -R /etc/security /etc/security.bak
fi

# dl
git clone https://github.com/hoaroicuaphat/luna-vps

# test
test -d /etc/nginx/luna.d || mkdir /etc/nginx/luna.d

# etc
mv /etc/luna-vps/etc/*.conf /etc

	# nginx
	mv /etc/luna-vps/etc/nginx/conf.d/*.conf /etc/nginx/conf.d
	mv /etc/luna-vps/etc/nginx/luna.d/*.conf /etc/nginx/luna.d

		# *.conf
		mv /etc/luna-vps/etc/nginx/*.conf /etc/nginx

	# fail2ban
	mv /etc/luna-vps/etc/fail2ban/filter.d/*.conf /etc/fail2ban/filter.d

	# security
	mv /etc/luna-vps/etc/security/*.conf /etc/security

# rm
rm -Rf luna-vps

# clear
clear && echo "meow <3" && sleep 1 && clear
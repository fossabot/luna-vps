# i, ri, or u
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fhoaroicuaphat%2Fluna-vps.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fhoaroicuaphat%2Fluna-vps?ref=badge_shield)

```
cd /etc && bash <(wget -O - https://raw.githubusercontent.com/hoaroicuaphat/luna-vps/master/luna.sh)
```
# s
## `http`
```
include /etc/nginx/conf.d/*.conf;
```
## `server`
```
include /etc/nginx/luna.d/*.conf;
```
## `jail.local`
```
https://github.com/hoaroicuaphat/luna-vps/blob/master/etc/fail2ban/jail.local
```
## If you don’t see `jail.local`, simply run:
```
cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
```
## sr
```
nginx -t && service nginx restart
service fail2ban restart
```
# t
```
# Tuesday, July 10, 2018 (GMT+7)

# Limit HTTP request methods

	# only GET, HEAD, POST
	wget --method=GET ip
	wget --method=HEAD ip
	wget --method=POST ip

	# unlimit
	wget --method=PUT ip
	...



# User Agent

	# GOOD
	wget --user-agent=Googlebot ip
	...

	# BAD
	wget --user-agent=360Spider ip
	...



# Block

	# Block Bad Queries
	# Blocks a wide range of malicious requests
	# Blocks directory traversal attacks
	# Blocks executable file uploads
	# Blocks SQL injection attacks
	ip/?s=@@
	ip/?s=eval\(|UNION(.*)SELECT
	ip/?s=base64_
	...

# Reject requests with too long (url, query string, file name) >= 255
ip/Meowwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
```
# ~
## Memcached
```
# https://www.digitalocean.com/community/tutorials/how-to-secure-memcached-by-reducing-exposure

echo '-U 0' >> /etc/memcached.conf
service memcached restart
```


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fhoaroicuaphat%2Fluna-vps.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fhoaroicuaphat%2Fluna-vps?ref=badge_large)
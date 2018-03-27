server {
	listen 443 ssl;
	listen 80;
	server_name boutique.vieuxsinge.com;
	
	ssl_certificate /etc/letsencrypt/live/www.vieuxsinge.com/fullchain.pem;
	ssl_certificate_key /etc/letsencrypt/live/www.vieuxsinge.com/privkey.pem;

	include /home/poils/letsencrypt/letsencrypt-nginx/letsencrypt_nginx/options-ssl-nginx.conf;
	
	# Redirect all traffic to external website
        return 301 https://brasserieduvieuxsinge.auneor-conseil.fr;
}

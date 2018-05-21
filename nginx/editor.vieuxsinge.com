server {
	listen 443 ssl;
	server_name editor.vieuxsinge.com;
	
	ssl_certificate /etc/letsencrypt/live/www.vieuxsinge.com/fullchain.pem;
	ssl_certificate_key /etc/letsencrypt/live/www.vieuxsinge.com/privkey.pem;

	include /home/poils/dev/certbot/certbot-nginx/certbot_nginx/options-ssl-nginx.conf;


	location / {
	    root      /home/www/editor.vieuxsinge.com/;
	    index     index.html;
	}
}

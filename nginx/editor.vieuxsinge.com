server {
	listen 443 ssl;
	listen 80;
	server_name editor.vieuxsinge.com;
	
	ssl_certificate /etc/letsencrypt/live/www.vieuxsinge.com/fullchain.pem;
	ssl_certificate_key /etc/letsencrypt/live/www.vieuxsinge.com/privkey.pem;

	include /home/poils/letsencrypt/letsencrypt-nginx/letsencrypt_nginx/options-ssl-nginx.conf;


	location / {
	    root      /home/www/editor.vieuxsinge.com/;
	    index     index.html;
	}
	
	# Redirect non-https traffic to https
    	if ($scheme != "https") {
        	return 301 https://$host$request_uri;
    	} # managed by Certbot
}

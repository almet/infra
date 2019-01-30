server {
	listen 443 ssl http2;
        listen [::]:443 ssl http2;
	server_name docs.vieuxsinge.com;
	
	ssl_certificate /etc/letsencrypt/live/www.vieuxsinge.com/fullchain.pem;
	ssl_certificate_key /etc/letsencrypt/live/www.vieuxsinge.com/privkey.pem;

        access_log /var/log/nginx/docs.vieuxsinge.com.log;
        # Diffie-Hellman parameter for DHE ciphersuites, recommended 2048 bits
        # ssl_dhparam /path/to/dhparam.pem;

        # HSTS (ngx_http_headers_module is required) (15768000 seconds = 6 months)
        add_header Strict-Transport-Security max-age=15768000;
	include /home/poils/infra/letsencrypt/options-ssl-nginx.conf;

	location / {
	    root      /home/www/docs.vieuxsinge.com/;
	    index     index.html;
	    auth_basic "LE CODE. DONNE MOI LE CODE.";
            auth_basic_user_file /etc/nginx/.htpasswd;
	}
}

server {
	listen 443 ssl http2;
        listen [::]:443 ssl http2;
	server_name vieuxsinge.com;
	
	ssl_certificate /etc/letsencrypt/live/www.vieuxsinge.com/fullchain.pem;
	ssl_certificate_key /etc/letsencrypt/live/www.vieuxsinge.com/privkey.pem;
        add_header Strict-Transport-Security max-age=15768000;
	include /home/poils/infra/letsencrypt/options-ssl-nginx.conf;
    	rewrite ^/$ https://docs.vieuxsinge.com redirect;
}

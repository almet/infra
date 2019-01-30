server {
	server_name docs.vieuxsinge.com;
	root      /home/docsvieuxsinge/docs.vieuxsinge.com;

	auth_basic "Restricted Content";
        auth_basic_user_file /etc/nginx/vieuxsinge.htpasswd;

	location / {
               autoindex on;
        }



    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/docs.vieuxsinge.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/docs.vieuxsinge.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}
server {
    if ($host = docs.vieuxsinge.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


	server_name docs.vieuxsinge.com;
    listen 80;
    return 404; # managed by Certbot


}

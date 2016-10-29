server {
	listen 8000;
	server_name www.vieuxsinge.com;

	location / {
	    root      /home/www/www.vieuxsinge.com/;
	    index     index.html;
	}
}

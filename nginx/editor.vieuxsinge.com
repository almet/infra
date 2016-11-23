server {
	listen 8000;
	server_name editor.vieuxsinge.com;

	location / {
	    root      /home/www/editor.vieuxsinge.com/;
	    index     index.html;
	}
}

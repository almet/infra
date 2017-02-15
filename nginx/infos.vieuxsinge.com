server {
        listen   8000;
	port_in_redirect off;
        server_name infos.vieuxsinge.com;
        set $path /home/www/infos.vieuxsinge.com/;
        root $path;
        client_max_body_size 20M;

        location ~ .php$ {
                fastcgi_param  SCRIPT_FILENAME  $path$fastcgi_script_name;
                fastcgi_pass   php_backend;
                include fastcgi_params;
        }

        location / {
                index index.html index.php;
        }
}



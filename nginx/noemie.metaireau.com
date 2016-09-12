server {
        listen   8000;
        server_name noemie.metaireau.com;
        set $path /home/www/noemie.metaireau.com/;
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


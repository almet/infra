#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d board.reseaugrappe.org \
-d forum.reseaugrappe.org \
-d cloud.reseaugrappe.org

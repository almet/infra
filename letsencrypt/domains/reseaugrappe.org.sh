#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d forum.reseaugrappe.org \
-d cloud.reseaugrappe.org

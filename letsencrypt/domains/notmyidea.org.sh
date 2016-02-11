#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d www.notmyidea.org \
-d blog.notmyidea.org \
-d shout.notmyidea.org \
-d gitlab.notmyidea.org \


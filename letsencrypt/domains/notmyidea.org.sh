#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d blog.notmyidea.org \
-d shout.notmyidea.org \
-d pad.notmyidea.org \
-d git.notmyidea.org \
-d board.notmyidea.org \
-d kinto.notmyidea.org \
-d static.notmyidea.org \
-d tvb.notmyidea.org \
-d zimit.notmyidea.org \
-d owncloud.notmyidea.org \
-d cozy.notmyidea.org \
-d photos.notmyidea.org \
-d tracker.notmyidea.org \
-d alexis.notmyidea.org \
-d dolibarr.notmyidea.org

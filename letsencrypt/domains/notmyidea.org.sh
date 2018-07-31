#!/bin/bash

certbot certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d www.notmyidea.org \
-d stream.notmyidea.org \
-d blog.notmyidea.org \
-d notes.notmyidea.org \
-d nova.notmyidea.org \
-d pad.notmyidea.org \
-d kinto.notmyidea.org \
-d static.notmyidea.org \
-d owncloud.notmyidea.org \
-d photos.notmyidea.org \
-d tracker.notmyidea.org \
-d torrents.notmyidea.org \
-d musique.notmyidea.org \
-d icecast.notmyidea.org \
-d pierre.notmyidea.org \
-d alexis.notmyidea.org

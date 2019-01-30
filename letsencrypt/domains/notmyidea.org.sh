#!/bin/bash

certbot certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d www.notmyidea.org \
-d stream.notmyidea.org \
-d static.notmyidea.org \
-d owncloud.notmyidea.org \
-d tracker.notmyidea.org \
-d torrents.notmyidea.org \
-d pierre.notmyidea.org \
-d varroa.notmyidea.org \
-d salmon.notmyidea.org

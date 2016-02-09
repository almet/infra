How Artichaud works?
####################

If you want to add a new webby thing to this server, you will need to:

1. Make it run at startup. For this we use supervisord.
2. Have the haproxy server updated to point to it properly.
3. It is usually preferred to have everything configured in NGINX (rather than
   running the serverby themselves for instance).
4. We try to have SSL endpoints enabled for each and every site that's running
   here. We use let's encrypt for this (see the section about that later on)

Commands needed to add a new service to haproxy + nginx
=======================================================

If you want to have 

How to run a TOR hidden service
===============================

How to enable SSL via Let's Encrypt
===================================

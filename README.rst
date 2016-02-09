How Artichaud works?
####################

If you want to add a new webby thing to this server, you will need to:

1. If it runs "normally", create an NGINX configuration file for it;
   It is usually preferred to have everything configured in NGINX (rather than
   running the serverby themselves for instance).
2. We try to have SSL endpoints enabled for each and every site that's running
   here. We use let's encrypt for this (see the section about that later on)
3. If you need to run another dedicated server, you can do so, please make it run
   at startup. For this, have a look at our supervisor section.

Commands needed to add a new service to haproxy + nginx
=======================================================

If you want to add a new HTTP service, the best way is usually to have it
running behind NGINX. To do so, you need to first create a file next to the
other ones in ``/nginx`` and then create a symbolic link to the configuration
on the machine::

    $ ln -s nginx/domain.tld /etc/nginx/sites-enabled/domain.tld

How to run a service at startup
===============================

You need to create a file next to the other ones in ``/supervisor``. Have a
look at the options by yourself.

Then, create a symbolic link to the configuration on the machine::

    $ ln -s supervisor/service.conf /etc/supervisor/conf.d/service.conf

Then, restart check that everything works as expected::
  
    $ sudo supervisorctl

How to enable SSL via Let's Encrypt
===================================

HAProxy serves as a termination endpoint in this infrastructure. It means that
all the SSL magic is offloaded when in HAProxy.

We try to run all the services behind SSL. It's actually quite simple to enable
SSL for a new domain.

The first thing to do is to add you domain in a new file under ``letsencrypt/domain.tld.sh``.
Then, you can run this script and after that, run the ``letsencrypt/install-certs.sh`` script.

How to run a TOR hidden service
===============================

To run a service behind a TOR hiddent service, you need to:

1. Edit the /etc/tor/torrc file and decide on a port that you want to bind locally.
2. Go in the haproxy configuration and bind this port in a new frontend, and
   make the link with the backend you want.
3. Eventually place the name of the hidden service in the NGINX configuration.

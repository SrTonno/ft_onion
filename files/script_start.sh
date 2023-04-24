#!/bin/sh
service ssh restart
#service nginx start
service tor start
cp /var/lib/tor/my_website/hostname ~/domain_onion.txt
nginx -g "daemon off;"
#/bin/bash

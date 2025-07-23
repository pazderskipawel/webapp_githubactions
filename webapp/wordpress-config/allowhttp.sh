#!/bin/bash
cd /var/www/html
# Update WordPress site URL and home URL to allow HTTP access
exec wp option update siteurl http://localhost:8080
exec wp option update home http://localhost:8080
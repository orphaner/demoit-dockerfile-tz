#!/bin/bash

set -xe

# Create initial container
c=$( buildah from debian:stable )

# Set some config
buildah config --author "Nicolas L." $c
buildah config --entrypoint '[ "/usr/sbin/nginx", "-g", "daemon off;" ]' $c

# Install nginx clean all stuff
buildah run $c apt update
buildah run $c apt install -y nginx
buildah run $c apt-get clean

# Put our work in the image
buildah copy $c index.html /var/www/html/

# Now is time to create the image
buildah commit $c nginx:buildahfile

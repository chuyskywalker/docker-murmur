#!/bin/bash -e

# Setup from ENV vars
ruby /mumble.rb

# Start the server
exec /usr/sbin/murmurd -fg -ini /mumble-server.ini

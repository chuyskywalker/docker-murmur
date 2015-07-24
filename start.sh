#!/bin/bash
set -e
ruby /mumble.rb
exec /usr/sbin/murmurd -fg -ini /mumble-server.ini
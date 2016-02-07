FROM ubuntu

# Update apt, upgrade all pacakges, install the ones we need, do some gem installs, clean up apt
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update \
 && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install -y ruby mumble-server libsqlite3-dev ruby-dev build-essential \
 && gem install data_mapper --no-rdoc --no-ri \
 && gem install dm-sqlite-adapter --no-rdoc --no-ri \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD files/* /

EXPOSE 64738

CMD ["/start.sh"]

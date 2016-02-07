FROM ubuntu:trusty-20160119

# Update apt, upgrade all pacakges, install the ones we need, do some gem installs, clean up apt
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install -y ruby mumble-server libsqlite3-dev ruby-dev build-essential
RUN gem install data_mapper --no-rdoc --no-ri
RUN gem install dm-sqlite-adapter --no-rdoc --no-ri
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/*
RUN rm -rf /var/tmp/*

ADD files/* /

EXPOSE 64738

CMD ["/start.sh"]

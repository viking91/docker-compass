FROM library/node:latest

MAINTAINER Vasil Kolev <vslklv1991@gmail.com>

#install ruby
RUN apt-get update && apt-get install -y ruby ruby-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#install latest compass
RUN gem install --no-rdoc --no-ri sass -v 3.4.22
RUN gem install --no-rdoc --no-ri compass

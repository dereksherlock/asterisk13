FROM ubuntu:15.10
MAINTAINER Derek Sherlock <dereksherlock@users.noreply.github.com>
ENV build_date 2015-07-12

RUN apt-get update -y
RUN apt-get install -y asterisk asterisk-config

# RUN apt-get install curl linux-headers gcc cpp libxml2 libxml2-dev sqlite3 sqlite3-dev openssl libnewt-dev 
#RUN yum install kernel-headers gcc gcc-c++ cpp ncurses ncurses-devel libxml2 libxml2-devel sqlite sqlite-devel openssl-devel newt-devel kernel-devel libuuid-devel net-snmp-devel xinetd tar -y

## Download asterisk.
## Currently Certified Asterisk 13.1
#RUN curl -sf -o /tmp/asterisk.tar.gz -L http://downloads.asterisk.org/pub/telephony/certified-asterisk/certified-asterisk-13.1-current.tar.gz
## gunzip asterisk
#RUN mkdir /tmp/asterisk
#RUN tar -xzf /tmp/asterisk.tar.gz -C /tmp/asterisk --strip-components=1
#WORKDIR /tmp/asterisk
## make asterisk.
#ENV rebuild_date 2015-07-12
#
#
## Configure
#RUN ./configure --libdir=/usr/lib64 1> /dev/null
## Remove the native build option
#RUN make menuselect.makeopts
#RUN sed -i "s/BUILD_NATIVE//" menuselect.makeopts
## Continue with a standard make.
#RUN make 1> /dev/null
#RUN make install 1> /dev/null
#RUN make samples 1> /dev/null
#WORKDIR /
#
#RUN mkdir -p /etc/asterisk
## ADD modules.conf /etc/asterisk/
#ADD iax.conf /etc/asterisk/
#ADD extensions.conf /etc/asterisk/
#
#CMD asterisk -f

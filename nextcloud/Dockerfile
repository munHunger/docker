FROM ubuntu:16.04

RUN apt-get install -y apache2 mariadb-server libapache2-mod-php7.0
RUN apt-get install -y php7.0-gd php7.0-json php7.0-mysql php7.0-curl php7.0-mbstring
RUN apt-get install -y php7.0-intl php7.0-mcrypt php-imagick php7.0-xml php7.0-zip

RUN apt-get install -y wget

RUN cd /tmp
RUN wget -O https://download.nextcloud.com/server/releases/nextcloud-12.0.5.tar.bz2
RUN tar -xjf nextcloud-*.tar.bz2

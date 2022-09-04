FROM centos:latest
MAINTAINER sksairam9@gmail.com
RUN yum install -y httpd \
:ip \
un:ip
ADO https://www.free.CSS.com/assets/files/free.CSS.templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD [" /usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

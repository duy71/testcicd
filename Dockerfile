FROM centos:latest
WORKDIR /var/www/html

RUN yum update -y
RUN yum install vim -y
ADD ./index.html /var/www/html/

EXPOSE 80


FROM centos:latest
WORKDIR /var/www/html

RUN yum install httpd httpd-tools -y
RUN yum install vim -y
ADD ./index.html /var/www/html/

EXPOSE 80

ENTRYPOINT [ "httpd" ]
CMD [ "-D", "FOREGROUND" ]


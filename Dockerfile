FROM httpd:2.4.29-alpine
MAINTAINER Liam Hiscock

#RUN adduser -D -u 1000 www-data
COPY templates /etc/gotpl/
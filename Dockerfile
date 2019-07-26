#FROM
#MAINTAINER
#RUN
#COPY
#ADD
#EXPOSE
#ENV
#CMD
#ENTRYPOINT
#VOLUME
#USER
#WORKDIR
#ARGS
FROM centos:7
MAINTAINER ursbrchandra
RUN yum -y update
RUN yum -y install httpd
ADD code /var/www/html
EXPOSE 80
ENV BACKENDLB=test
CMD ["apachectl", "-D", "FOREGROUND"]



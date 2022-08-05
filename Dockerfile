FROM centos:7
MAINTAINER sanjiit.gupta1990@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/romofyi.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip romofyi.zip
RUN cp -rvf romofyi-html/* .
RUN rm -rf romofyi-html romofyi.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80

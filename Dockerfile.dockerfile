FROM centos:latest


RUN yum update -y
RUN yum install -y curl\
        tree \
        ip-utils \
        httpd
RUN systemctl enable httpd && \
        start httpd
COPY hello /var/www/html/index.html
EXPOSE 8080
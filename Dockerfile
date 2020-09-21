FROM centos:latest
MAINTAINER hitechinstitution
RUN yum -y install httpd
CMD ["wget https://www.hitechins.in/"]
COPY index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
CMD ["systemctl start httpd”]
CMD ["systemctl enable httpd”]
EXPOSE 80

FROM ubuntu
MAINTAINER infolearn14@gmail.com
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /usr/share/nginx/html
RUN rm -Rf /usr/share/nginx/html/*
RUN git clone https://github.com/cloudacademy/static-website-example.git/ /usr/share/nginx/html/
ENTRYPOINT ["/usr/share/nginx", "-g", "daemon off;"]


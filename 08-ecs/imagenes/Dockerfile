FROM ubuntu:latest

RUN apt update 
RUN apt install nginx curl -y


RUN echo "hola mundo" |tee /var/www/html/index.html


EXPOSE 80
#CMD nginx -g 'daemon off;'

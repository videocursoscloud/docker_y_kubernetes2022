FROM python:3.9.13-buster

RUN apt update
RUN apt-get install supervisor -y

ADD supervisor_services.conf /etc/supervisor/conf.d/

ADD requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt
RUN rm -rf /tmp/requirements.txt

ADD src/ /src/

EXPOSE 5000
CMD supervisord -n -c /etc/supervisor/supervisord.conf


FROM python:3.9.13-buster

ADD requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt
RUN rm -rf /tmp/requirements.txt

ADD src/ /src/

EXPOSE 5000

CMD python3 /src/main.py
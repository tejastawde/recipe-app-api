 FROM python:3.9.2-alpine3.13
 MAINTAINER AEI Enterprise

 ENV PYTHONUNBUFFERED 1

 COPY ./requirements.txt /requirements.txt
 RUN pip install -r /requirements.txt

 RUN  mkdir /app
 WORKDIR /app
 COPY ./app /app

RUN adduser -D ks
USER ks
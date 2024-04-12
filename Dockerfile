FROM python:3.10-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH /usr/local/lib/python3.10/site-packages/:/fuckup/

RUN apt-get update && apt-get install -y netcat

COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip setuptools
RUN pip3 install -r requirements.txt

EXPOSE 8080

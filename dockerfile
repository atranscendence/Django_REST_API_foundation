FROM python:3.7-alpine
LABEL  key="juudgespy@gmail.com"

ENV PYTHONUNBUFFRED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /REST-FOUND
WORKDIR /REST-FOUND

COPY ./REST-foundation /REST-FOUND

RUN adduser -D run_user
USER run_user
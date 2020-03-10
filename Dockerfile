FROM python:3-buster

MAINTAINER Rodrigo Echaide <rodrigoechaide@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*

RUN pip install jinja2                                   

WORKDIR /data
VOLUME ["/data"]

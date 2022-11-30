FROM debian:buster-20221114-slim

RUN apt-get update && apt-get install -y \
    freeradius \
    freeradius-mysql \
    freeradius-utils

EXPOSE 1812/udp 1813/udp

ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_USER=radtest
ENV DB_PASS=radsecret
ENV DB_NAME=radius
ENV RADIUS_KEY=testing123
ENV RAD_CLIENTS=10.0.0.0/24
ENV RAD_DEBUG=no
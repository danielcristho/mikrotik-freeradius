FROM ubuntu:xenial

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install nano \
                    vim \
                    iproute2 \
                    net-tools \
                    wget \
                    curl -y
RUN apt-get clean

CMD ["freeradius -X"]

EXPOSE 1812 1813
FROM freeradius/freeradius-server:latest-3.2

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install nano \
                    vim \
                    iproute2 \
                    net-tools \
                    wget \
                    curl -y

EXPOSE 1812 1813
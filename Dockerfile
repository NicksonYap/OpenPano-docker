FROM python:3.5

# ENV variables for python3 - see http://click.pocoo.org/5/python3/
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN apt update

# Install pano lib
RUN apt install build-essential sed cmake libjpeg-dev libeigen3-dev -y
RUN mkdir /root/openpano \
    && git clone https://github.com/ppwwyyxx/OpenPano.git /root/openpano \
    && cd /root/openpano \
    && git checkout 81e7d28bc0f13d0511787ce93c76392f8d803305 \
    && make -C src

ENV PATH "$PATH:/root/openpano/src"

# RUN mkdir /data && cp /root/openpano/src/config.cfg /data/config.cfg

WORKDIR "/root"
CMD ["/bin/bash"]
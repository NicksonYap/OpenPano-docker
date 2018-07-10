FROM python:3.5

# ENV variables for python3 - see http://click.pocoo.org/5/python3/
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN apt-get update

# Install pano lib
RUN apt-get install build-essential sed cmake libjpeg-dev libeigen3-dev -y
RUN mkdir /openpano \
    && git clone https://github.com/ppwwyyxx/OpenPano.git /openpano \
    && cd /openpano \
    && make -C src \
    && cp /openpano/src/config.cfg /

WORKDIR "/root"
CMD ["/bin/bash"]
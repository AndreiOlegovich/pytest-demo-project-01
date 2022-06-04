# getting base image ubuntu
FROM ubuntu:20.04

MAINTAINER andreyolegovich.ru

CMD ["echo", "HH: image is creating"]

ENV TEST_DIR=/opt 

ENV PYTHONPATH=TEST_DIR
ENV TZ=Europe/Helsinki
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p $TEST_DIR

WORKDIR $TEST_DIR/tests/js

VOLUME /opt


# apt-get is recommended for Docker files

# install linux utils
RUN apt-get -y update \
  && apt-get install -y dialog \
  && apt-get install -y apt-utils build-essential \
  && apt-get install -y tree vim \
  && apt-get install -y curl gcc g++ make \
  && apt-get -y update \
  && apt-get -y upgrade


# install nodejs
RUN cd /usr/local/bin \
  && curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh \
  && chmod +x nodesource_setup.sh \
  && bash nodesource_setup.sh \
  && apt-get install -y nodejs

# update npm
RUN npm init -y
RUN npm i -s npm@8.12.1

# install browser dependencies
RUN apt-get install -y libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2 libatspi2.0-0

# install playwright
RUN npm install npm@8.12.1
RUN npm install @playwright/test
# RUN npx playwright install chromium --with-deps
RUN npx playwright install --with-deps
RUN npm install playwright



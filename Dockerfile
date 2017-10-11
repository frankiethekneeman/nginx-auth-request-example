#And the actual runner
FROM ubuntu:xenial

#TODO install nginx
RUN apt-get update && apt-get install -y --no-install-recommends \
    nodejs \
    npm \
    nginx \
    curl \
  && rm -rf /var/lib/apt/lists/* 

WORKDIR /nginx-testing

ADD * ./

RUN npm install \
  && mv default.conf /etc/nginx/conf.d/default.conf

CMD bash run.sh

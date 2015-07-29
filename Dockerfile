FROM iojs:2.4

MAINTAINER Michele Sorcinelli "mikefender@cryptolab.net"

RUN npm install -g protractor

RUN mkdir /code

WORKDIR /code

CMD ["protractor", "conf.js"] 

FROM iojs:2.3

RUN npm install -g protractor

RUN mkdir test

WORKDIR test

CMD ["protractor", "conf.js"] 

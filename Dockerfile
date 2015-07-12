FROM debian

RUN apt-get update

RUN apt-get install -y nodejs 

RUN ln -s $(which nodejs) /usr/bin/node

RUN apt-get install -y npm

RUN npm install -g protractor

RUN mkdir test

WORKDIR test

CMD ["protractor", "conf.js"] 

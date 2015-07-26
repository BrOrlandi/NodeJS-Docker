FROM node:0.12

MAINTAINER Bruno Orlandi, brorlandi@gmail.com


EXPOSE 8000

RUN npm install -g bower
RUN npm install -g gulp
RUN npm install -g coffee-script
RUN npm install -g pm2

VOLUME /scripts
ADD run.sh /scripts/run.sh
RUN chmod +x /scripts/run.sh

CMD /scripts/run.sh


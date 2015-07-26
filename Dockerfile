FROM node:0.12

MAINTAINER Bruno Orlandi, brorlandi@gmail.com


EXPOSE 8000

RUN npm install -g bower
RUN npm install -g gulp
RUN npm install -g coffee-script
RUN npm install -g pm2

CMD ["sh /scripts/compile.sh"]


FROM node:8-alpine
MAINTAINER MissSarahh

ADD . /listingoffiles/
WORKDIR /listingoffiles
VOLUME /listingoffiles/cache

RUN npm install

ENV HOST 0.0.0.0
ENV PORT 33001

EXPOSE 33001

CMD ["npm", "start"]

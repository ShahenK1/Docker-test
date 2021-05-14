FROM node

RUN npm i -g yarn --force

COPY ./ /var/www/docker/

EXPOSE 3000

VOLUME /var/www/docker/

WORKDIR /var/www/docker/

CMD yarn init && yarn start

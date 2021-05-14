FROM centos

RUN yum install -y npm && npm i -g http-server

VOLUME /var/www/docker

WORKDIR /var/www/docker

COPY ./ /var/www/docker/

EXPOSE 8080

CMD http-server

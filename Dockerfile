FROM nginx:latest

RUN mkdir -p /var/www/html

ENV NGINX_CONF /etc/nginx/conf.d/default.conf

COPY ./nginx.conf ${NGINX_CONF}

ADD ./ /var/www/html/site

EXPOSE 80

LABEL desciption="Via Cep Docker"
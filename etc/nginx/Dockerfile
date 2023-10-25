FROM nginx:stable

RUN rm /etc/nginx/conf.d/default.conf

COPY ./etc/nginx/upstream.conf /etc/nginx/conf.d/upstream.conf

CMD ["nginx"]
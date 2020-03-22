FROM nginx:1.13-alpine
RUN echo 5
COPY nginx.conf /etc/nginx/nginx.conf
COPY proxy_params /etc/nginx/proxy_params
EXPOSE 80
EXPOSE 443

RUN mkdir /cache
RUN chown nginx /cache
RUN chmod 600 /cache
ENTRYPOINT [ "/bin/sh", "-c" ]
CMD [ "while :; do sleep 6h; nginx -s reload; done & nginx -g \"daemon off;\"" ]

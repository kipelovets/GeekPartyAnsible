FROM nginx

RUN usermod -u 1000 www-data

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
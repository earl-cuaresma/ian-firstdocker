FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y git nginx ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN rm -rf /var/www/html/* && \
    git clone https://github.com/earl-cuaresma/ian-firstdocker.git /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
FROM node:14.6.0-alpine
RUN mkdir -p /var/www/frontend
# timezone
ARG TZ
WORKDIR /var/www/frontend
COPY ./frontend/ /var/www/frontend/

RUN apk update && \
    apk upgrade && \
    apk add --no-cache make gcc g++ python && \
    npm install

EXPOSE 3000

ENTRYPOINT ["npm", "run", "dev"]

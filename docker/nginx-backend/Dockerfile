FROM nginx:1.17.7-alpine as backend
ARG APP_GROUP_ID=2001
ARG APP_GROUP_NAME="app"

RUN addgroup --system --gid ${APP_GROUP_ID} "${APP_GROUP_NAME}"
RUN addgroup nginx "${APP_GROUP_NAME}"

COPY docker/nginx-backend/conf.d /etc/nginx/conf.d
COPY docker/nginx-backend/nginx.conf /etc/nginx/

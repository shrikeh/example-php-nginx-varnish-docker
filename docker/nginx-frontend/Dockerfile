ARG NGINX_TAG="1.17.7-alpine"

FROM nginx:${NGINX_TAG} as frontend

COPY docker/nginx-frontend/conf.d /etc/nginx/conf.d

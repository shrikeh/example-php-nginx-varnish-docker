ARG NGINX_TAG="1.17.7-alpine"
FROM nginx:${NGINX_TAG} as frontend-nginx-build
ARG BACKEND_CACHE_PORT=80
ARG FRONTEND_NGINX_PORT=8080

WORKDIR /build
# Copy the templates to the /build dir
COPY docker/frontend-nginx/ ./

# Get gomplate (https://docs.gomplate.ca/)
COPY --from=hairyhenderson/gomplate:v2.5.0-slim /gomplate /bin/gomplate

RUN /bin/gomplate --input-dir=./ --output-dir=/etc/nginx/

FROM nginx:${NGINX_TAG} as frontend-nginx

WORKDIR /etc/nginx

COPY --from=frontend-nginx-build /etc/nginx/ .

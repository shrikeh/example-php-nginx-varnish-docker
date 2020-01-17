# simple VCL example
vcl 4.1;

backend default {
  .host = "backend-nginx";
  .port = "{{ .Env.BACKEND_NGINX_PORT }}";
}

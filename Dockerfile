FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html.template /index.html.template
COPY entrypoint.sh /entrypoint.sh
COPY favicon.ico /usr/share/nginx/html/favicon.ico
COPY charts/dev/values.yaml /usr/share/nginx/html/charts/dev/values.yaml


RUN chmod +x /entrypoint.sh && chmod -R +rx /usr/share/nginx/html/*

ENTRYPOINT ["/entrypoint.sh"]


FROM nginx:latest

WORKDIR /app

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html.template /index.html.template
COPY entrypoint.sh /entrypoint.sh
COPY favicon.ico /app/favicon.ico
COPY charts/dev/values.yaml /app/values.yaml

RUN chmod +x /entrypoint.sh && chmod -R +rx /app/*

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]


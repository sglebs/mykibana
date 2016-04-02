FROM kibana

WORKDIR /app
COPY CHECKS /app
copy nginx.conf.sigil /app

EXPOSE 5601


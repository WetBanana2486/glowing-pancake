FROM nginx:alpine

RUN apk add --no-cache gettext
# Copy the nginx configuration template and start script
COPY nginx.conf.template /etc/nginx/nginx.conf.template
# Use envsubst to replace environment variables in the nginx configuration
COPY start.sh /start.sh

# Give execute permissions to the start script
RUN chmod +x /start.sh
# Entry point to the start script
ENTRYPOINT ["/start.sh"]

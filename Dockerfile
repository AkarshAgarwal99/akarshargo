# Use Alpine Linux as the base image
FROM alpine:latest

# Install Apache HTTP Server and other necessary packages
RUN apk update && \
    apk add --no-cache apache2 && \
    rm -rf /var/cache/apk/*

# Copy your website files into the container
COPY index.html /var/www/localhost/htdocs/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache HTTP Server in the foreground when the container starts
CMD ["httpd", "-D", "FOREGROUND"]

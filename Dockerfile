# Use official Nginx image
FROM nginx:alpine

# Copy your custom HTML and assets into Nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 3000 (as you requested)
EXPOSE 3000

# Replace the default nginx config to listen on port 3000
RUN sed -i 's/80;/3000;/g' /etc/nginx/conf.d/default.conf

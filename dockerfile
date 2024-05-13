# Use the official Nginx image as base
FROM nginx

# Create a directory for the website files
RUN mkdir -p /web

# Grant permissions for the /web directory
RUN chown -R nginx:nginx /web

# Copy custom Nginx configuration
COPY nginx/* /etc/nginx/

# Copy html files
COPY claude /web

# Switch back to the default non-root user
#USER nginx

# Expose port 80 to the outside world
EXPOSE 80

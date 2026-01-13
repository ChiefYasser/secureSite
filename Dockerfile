# use this nginx image unprivilegedwai to run as non root user 
FROM nginxinc/nginx-unprivileged:alpine

# Copy our website to the html folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080 (Non-root users can't use port 80)
EXPOSE 8080
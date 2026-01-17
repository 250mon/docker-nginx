# Use lightweight official Nginx image
FROM nginx:alpine

# Optional: remove the built-in default config
# RUN rm /etc/nginx/conf.d/default.conf

# Copy nginx config template (will be processed by nginx entrypoint)
# Templates in /etc/nginx/templates/ are automatically processed and copied to /etc/nginx/conf.d/
COPY conf.d/default.conf.template /etc/nginx/templates/default.conf.template


# Copy static web files if any (optional)
# COPY html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Keep Nginx running in the foreground
CMD ["nginx", "-g", "daemon off;"]

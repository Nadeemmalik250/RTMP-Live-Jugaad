# Use Alpine Linux with Nginx
FROM alfg/nginx-rtmp:latest

# Copy the nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose RTMP and HTTP ports
EXPOSE 1935 8080

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]

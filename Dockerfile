
# Use lightweight Nginx image
FROM nginx:alpine

# Copy all project files into Nginx web root
COPY . /usr/share/nginx/html

# Expose default HTTP port
EXPOSE 80

# Run Nginx server
CMD ["nginx", "-g", "daemon off;"]

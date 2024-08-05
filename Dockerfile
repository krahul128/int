# Use the official Nginx image as a base
FROM nginx:alpine

# Copy the HTML file to the Nginx server's document root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]

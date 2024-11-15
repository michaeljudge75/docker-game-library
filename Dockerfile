# Use an official Nginx image as a base image
FROM nginx:alpine

# Copy your website files into the Nginx web directory
COPY . /usr/share/nginx/html

# Expose the port that Nginx will run on
EXPOSE 80

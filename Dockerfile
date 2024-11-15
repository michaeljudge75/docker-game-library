# Use an official Nginx image as a base image
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your website files into the Nginx web directory
COPY . /usr/share/nginx/html

# Copy a custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Expose the port that Nginx will run on
EXPOSE 80

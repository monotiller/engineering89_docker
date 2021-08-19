# Building customised Docker images
# Build an image to automate the tasks to launch static website/page using nginx webserver with Docker

# Use the official image nginx
# FROM is the keyword to use the image
FROM nginx

# Label it with your name or email
# This is optional
LABEL MAINTAINER="mmarsh@spartaglobal.com"

# Copy it over to the container
# Copy the folder/file from localhost to the container
# Copy the data as our index.html/app1
COPY app1 /usr/share/nginx/html

# Declare to use default port 80 for nginx
EXPOSE 80

# CMD with the final command - example; npm start
CMD [ "nginx", "-g", "daemon off;" ]
# We get this from the official image of nginx
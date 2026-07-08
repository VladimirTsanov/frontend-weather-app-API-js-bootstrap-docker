# Declare the base image
FROM nginx:alpine

# Setting a work directory
WORKDIR /usr/share/nginx/html

RUN rm -rf /usr/share/nginx/html/*

# copy files
COPY . .

# expose nginx port
EXPOSE 80


CMD [ "nginx", "-g", "daemon off;" ]


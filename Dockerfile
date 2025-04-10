FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY ./website_files .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

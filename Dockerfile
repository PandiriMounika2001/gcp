FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
Expose 80
CMD ["nginx","-g","daemon off;"]

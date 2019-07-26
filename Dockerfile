#this is sample Image
FROM  ubuntu
MAINTAINER kesia.s@mgtechsoft.com

RUN apt-get update
RUN apt-get install -y nginx
CMD ["echo","image created"]
RUN service nginx start

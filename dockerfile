FROM ubuntu
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN su -
RUN wget -o- https://mc-server-scripts.s3-sa-east-1.amazonaws.com/3.0.3/install-x86_64.sh
RUN chmod +x install-x86_64.sh

CMD ./install-x86_64.sh

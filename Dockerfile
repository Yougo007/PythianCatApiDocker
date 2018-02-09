FROM ubuntu

MAINTAINER udokporo_ugochukwu@yahoo.co.uk

RUN apt-get update && apt-get install && apt-get intall git
RUN git clone https://github.com/Yougo007/PythianCatApiDocker.git

#Execute Webserver installation script
COPY rubywebinstaller.sh .
RUN chmod +x /rubywebinstaller.sh && ./rubywebinstaller.sh

# Expose rails port
EXPOSE 3000
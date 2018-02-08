FROM ubuntu

MAINTAINER udokporo_ugochukwu@yahoo.co.uk

#Execute Webserver installation script
RUN chmod +x /rubywebinstaller.sh && ./rubywebinstaller.sh

# Expose rails port
EXPOSE 3000
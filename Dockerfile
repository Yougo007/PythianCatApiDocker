FROM ubuntu

MAINTAINER udokporo_ugochukwu@yahoo.co.uk

#Creat and set working directory
RUN apt-get -y update && apt-get -y install curl \
	&& curl -sSL https://rvm.io/mpapis.asc | gpg --import - \
	&& curl -sSL https://get.rvm.io | bash -s stable \
	&& /bin/bash source /etc/profile.d/rvm.sh \
	&& rvm reload && rvm requirements run  && rvm install 2.4.1  && rvm use 2.4.1 --default  \
	&& gem install rails && gem install bundler \
	&& apt-get -y install git && apt-get -y install libpq-dev && apt-get install -y tzdata 
	
RUN mkdir /usr/app 

WORKDIR /usr/app

RUN git init && git clone https://github.com/Yougo007/PythianCatApiDocker.git

RUN cd Pyt* && bundle install
# Expose rails port

CMD rails server

EXPOSE 3000









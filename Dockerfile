FROM ubuntu

MAINTAINER udokporo_ugochukwu@yahoo.co.uk

#Creat and set working directory
RUN apt-get -y update && apt-get -y install curl \
        && curl -sSL https://rvm.io/mpapis.asc | gpg --import - \
        && curl -sSL https://get.rvm.io | bash -s stable

CMD /bin/bash  source /etc/profile.d/rvm.sh && rvm reload && rvm requirements run && rvm install 2.4.1 && rvm use 2.4.1 --default

CMD /bin/bash  gem install rails && gem install bundler


RUN     apt-get -y install git \
        && apt-get -y install libpq-dev \
        && apt-get install -y tzdata

RUN mkdir /usr/app

WORKDIR /usr/app

RUN git init && git clone https://github.com/Yougo007/CatAPI.git

CMD cd Cat*

#Start Bundle
CMD bundle install

# Start & Expose rails port
#CMD rails server

#Expose Rails port
#EXPOSE 3000

#CMD ["rails", "server", "-b", "0.0.0.0"]

#COPY . .

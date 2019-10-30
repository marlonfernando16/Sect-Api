FROM ruby:2.6.4

MAINTAINER "Marlon Fernando"

RUN apt-get update

RUN apt-get install -y build-essential
RUN apt-get install -y nodejs

RUN gem install pry
RUN gem install rails -v 5.2.3

ENV APP_HOME /docker
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

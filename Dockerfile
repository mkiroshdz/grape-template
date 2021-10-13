FROM ubuntu:focal

RUN apt-get update
RUN apt-get install ruby2.7 ruby2.7-dev build-essential -y
RUN gem install bundler --no-document

WORKDIR /usr/local/myapp
COPY Gemfile Gemfile
RUN bundle install
RUN rm Gemfile
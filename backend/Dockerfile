FROM ruby:2.5.8-slim-buster

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install -j4

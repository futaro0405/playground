FROM ruby:3.2.2
RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /rails-practice
COPY Gemfile Gemfile.lock /rails-practice/
ENV BUNDLER_VERSION 2.5.4
RUN gem install bundler -v 
RUN bundle install $BUNDLER_VERSION \
    && bundle update --bundler \
    && bundle install
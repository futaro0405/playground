FROM ruby:3.2.2
RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /rails-practice
COPY Gemfile Gemfile.lock /rails-practice/
RUN bundle install
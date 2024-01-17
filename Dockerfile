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
RUN gem update --system \
    && gem install bundler -v $BUNDLER_VERSION \
    && bundle install -j 4
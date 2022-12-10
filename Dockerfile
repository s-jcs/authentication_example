FROM ruby:3.1.0

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install

COPY . /app

ENV RAILS_ENV=development
ENV RAILS_SERVE_STATIC_FILES=true


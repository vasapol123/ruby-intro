FROM ruby:3.1.2-alpine

WORKDIR /usr/src/app

COPY ./ ./

RUN gem install bundler

RUN bundle install

ENTRYPOINT [ "rspec" ]

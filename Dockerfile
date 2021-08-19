FROM ruby:2.7.4-slim

ENV LANG="C.UTF-8" \
    TZ="Asia/Tokyo"
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential git && \
    apt-get clean && \
    rm -r /var/lib/apt/lists/*

ENV APP_HOME /app
WORKDIR ${APP_HOME}

COPY Gemfile* ./
COPY *.gemspec ./
COPY ./lib/shazo/version.rb ./lib/shazo/version.rb
RUN bundle install --jobs 4

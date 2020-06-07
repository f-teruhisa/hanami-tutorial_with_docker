FROM ruby:2.7.1-slim
RUN apt-get update -qq && apt-get install -y libxslt-dev libxml2-dev \
    # for sqlite3
    sqlite3 libsqlite3-dev \
    # for nokogiri
    build-essential patch ruby-dev zlib1g-dev liblzma-dev
RUN mkdir /app
WORKDIR /app
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN echo 'gem: --no-document' > ~/.gemrc \
  && bundle install

ADD . /app
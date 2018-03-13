FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs screen

# Copy Gemfile in /tmp directory and install gems before setting
# workdir in order to allow caching
COPY Gemfile* /tmp/
WORKDIR /tmp
RUN gem install bundler
RUN bundle install

ADD . /myapp
WORKDIR /myapp
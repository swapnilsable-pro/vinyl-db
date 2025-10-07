FROM ruby:3.4.5

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.7.1
RUN bundle install
COPY . .

EXPOSE 3001

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3001"]
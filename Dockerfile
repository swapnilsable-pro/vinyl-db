FROM ruby:3.4.5-slim

WORKDIR /app

# Install dependencies
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends build-essential libpq-dev nodejs libyaml-dev && \
    rm -rf /var/lib/apt/lists/*

# Install bundler and gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.7.1 && bundle install --jobs 4 --retry 3

# Copy app code
COPY . .

EXPOSE 3001

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3001"]
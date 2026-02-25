FROM ruby:3.2.4

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  git \
  nodejs \
  npm \
  postgresql-client \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000
CMD ["bash", "-lc", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0 -p 3000"]

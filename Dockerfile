FROM ruby:3.1.2

# Install system dependencies
RUN apt-get update -qq && apt-get install -y pv build-essential postgresql-client nodejs npm

# Install Yarn
RUN npm install -g yarn

# Install gems
WORKDIR /app
ADD Gemfile Gemfile.lock ./
RUN bundle install

EXPOSE 3000

#!/bin/bash

# Exit on fail
set -e

gem install bundler -v '~> 2.2'

# Rails update
bundle update rails

# Bundle install
bundle install --jobs=4

# Wait for db
/wait-for-it.sh db:3306

# Migrate
bundle exec rake db:create
bundle exec rake db:migrate

# Remove puma pid if existed
rm -f tmp/pids/server.pid

# Start services
bundle exec rails server --port=3000 -b 0.0.0.0

# Finally call command issued to the docker service
exec "$@"

# README

Quiz game for **Inkitt**.

## Setup the project

1. `$ git clone <REPOSITORY_URL> InkittTest` - Clone the project
2. `$ cd InkittTest`

## Setup RVM

1. `$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`
2. `\curl -sSL https://get.rvm.io | bash -s stable`
3. `rvm install ruby-2.4.1`
3. `rvm 2.4.1@inkitt-test`

## Setup Bundler

1. `gem install bundler`
2. `bundle install`

## Database creation
`$ bundle exec rails db:setup`

## Seeding data
`$ bundle exec rails db:seed`

## Running the project
1. `$ bundle exec rails server`
2. Open the browser at url: http://localhost:3000

## Running the test suite
  `$ bundle exec rspec`

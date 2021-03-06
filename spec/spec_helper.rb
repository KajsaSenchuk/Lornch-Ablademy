require 'pry'
require 'rspec'
require 'capybara/rspec'

require_relative '../server.rb'

set :environment, :test
# set :database, :test

Capybara.app = Sinatra::Application

require 'database_cleaner'

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.after(:suite) do
  end
end

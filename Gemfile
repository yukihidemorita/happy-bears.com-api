source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3"
gem 'mysql2', '~> 0.5'
gem "kredis"
gem 'puma', '~> 5.0'

# Setting sentry
gem "sentry-ruby"
gem "sentry-rails"

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Open Api
gem 'committee' # https://github.com/willnet/committee-rails

# For Configration
gem 'dotenv-rails' # https://github.com/bkeepers/dotenv

# Swagger
gem 'grape-swagger-rails' # https://github.com/ruby-grape/grape-swagger-rails
gem 'swagger-docs' # https://github.com/richhollis/swagger-docs

# For Serializer
gem 'active_model_serializers' # https://github.com/rails-api/active_model_serializers
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

gem 'jwt'
gem 'json-jwt'
gem 'openssl'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'overcommit' # https://github.com/sds/overcommit
end

group :development, :test do
  gem 'byebug', platform: :mri # https://github.com/deivid-rodriguez/byebug
  gem 'faker' # https://github.com/faker-ruby/faker
  gem "factory_bot_rails" # https://github.com/thoughtbot/factory_bot_rails

  gem 'rubocop'
  gem 'rubocop-performance' # https://github.com/rubocop/rubocop-performance
  gem 'rubocop-rails' # https://github.com/rubocop/rubocop-rails

  gem 'rspec-rails', '~> 5.0.0' # https://github.com/rspec/rspec-rails

  gem 'rswag-api'
  gem 'rswag-ui'
  gem 'rswag-specs'

  gem 'committee-rails' # https://github.com/interagent/committee
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
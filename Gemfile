source "https://rubygems.org"

ruby "3.2.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

gem "bootstrap-sass"
gem "sassc-rails", "~> 2.1.2"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.12"
gem "mini_magick"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]
  # Use sqlite3 as the database for Active Record
  gem "sqlite3", "~> 1.4"

  # Debugging
  gem 'pry-byebug'
  gem 'pry-rails'

  # Test with RSpec
  gem "rspec-rails", '>= 6.0.0.rc1' # Rails 7 support starts with rspec-rails-6.0.0.rc1
  gem 'factory_bot_rails' # Manage test data
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"

   # Not for the should syntax, but for all the nice matchers, e.g. for model validations
   gem 'shoulda-matchers', '~> 5.0'

   # For stubbing and mocking requests to external services (like Mailjet, sms77 or webhooks)
   gem "webmock"

   # For automatic screenshots on a failed integration test
   gem 'capybara-screenshot'

   # for Controller Specs
   gem 'rails-controller-testing'
end

group :production do
  gem "pg"
end

gem "database_cleaner-active_record", "~> 2.2"

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3"

gem 'sass-rails'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use mysql2 as the database for Active Record
gem "mysql2"

gem "devise"
gem 'omniauth', '~> 2.0.4'
gem 'omniauth-microsoft-office365'
gem 'dotenv-rails', groups: [:development, :test]
gem 'omniauth-rails_csrf_protection'

#gem 'active_model_serializers', '~> 0.10.13'
gem 'grape-active_model_serializers'
gem 'grape'
gem 'bcrypt', '~> 3.1', '>= 3.1.12'
gem 'rack-cors', :require => 'rack/cors'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
#gem "hotwire-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [htts://github.com/rails/cssbundling-rails]

gem "cssbundling-rails"

# Backend Active Administration
gem 'activeadmin'
gem 'cancancan'
gem 'draper'
gem 'pundit'
gem 'tinymce-rails', '~> 4.7', '>= 4.7.6'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

# gem "tailwindcss-rails"
# gem 'hot-glue'
gem "tailwindcss-rails", "~> 2.0"

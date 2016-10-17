remove_file "Gemfile"
run "touch Gemfile"
add_source 'https://rubygems.org'

gem 'rails', '~> 5.0.0'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'clearance'

gem_group :development, :test do
  gem 'factory_girl_rails'
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.5'
  gem 'byebug', platform: :mri
  gem 'capybara'
  gem 'launchy'
  gem 'dotenv-rails'
end

gem_group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

run "rails generate rspec:install"

run 'touch spec/factories.rb'
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'puma', '~> 4.1'
gem 'mysql2', '>= 0.4.4'
gem 'cancan', '~> 1.6', '>= 1.6.10'
gem 'webpacker', '~> 4.0'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'active_model_serializers', '~> 0.10.10'
gem 'mail', '~> 2.7', '>= 2.7.1'
gem 'json', '~> 2.3', '>= 2.3.1'
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'delayed_job_active_record', '~> 4.1', '>= 4.1.4'
gem 'capistrano', '~> 3.14', '>= 3.14.1'

#FrontEnd
gem 'sass-rails', '~> 6.0'
gem 'coffee-rails', '~> 5.0'
gem 'turbolinks', '~> 5.2', '>= 5.2.1'
gem 'bootstrap', '~> 4.5', '>= 4.5.3'
gem 'jquery-rails', '~> 4.4'
gem 'simple_form', '~> 5.0', '>= 5.0.3'
gem 'uglifier', '~> 4.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
  gem 'factory_bot_rails', '~> 6.1'
  gem 'faker', '~> 2.14'
  gem 'rubocop', '~> 1.3', '>= 1.3.1'
  gem 'colorize', '~> 0.8.1'
  gem 'capybara', '~> 3.33'
  gem 'database_cleaner', '~> 1.8', '>= 1.8.5'
  gem 'awesome_print', '~> 1.8'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring', '~> 2.1', '>= 2.1.1'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'simplecov', '~> 0.19.1'
  gem 'capybara-screenshot', '~> 1.0', '>= 1.0.25'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
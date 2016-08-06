source 'https://rubygems.org'


gem 'rails', '~> 5.0.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'bcrypt', '~> 3.1.7'
gem 'simple_form'

gem 'doorkeeper' #oauth

gem 'gravtastic'


 gem 'refile', github: "refile/refile", require: 'refile/rails'
 gem 'refile-mini_magick'
 gem 'refile-postgres', '~> 1.4'
 gem "sinatra", github: "sinatra/sinatra", branch: "master"
 gem "rack-protection", github: "sinatra/rack-protection"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
  gem 'minitest-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rails-erd'
end

group :production do
  gem 'rails_12factor' #for heroku
end

group :test do
  gem 'minitest-rails-capybara'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

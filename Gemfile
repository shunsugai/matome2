source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: [:development]
gem 'pg', group: :staging
gem 'mysql2', '0.3.14', group: [:production, :test]

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.5.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.0.7'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '0.4.0', group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring', group: :development

gem 'devise', '3.2.4'
gem 'activeadmin', github: 'gregbell/active_admin'

gem 'unicorn', '4.8.3'

# Use Capistrano for deployment
group :development do
  gem 'capistrano', '3.2.1', :require => false
  gem 'capistrano-rails', :require => false
  gem 'capistrano-rbenv',   github: 'capistrano/rbenv', :require => false
  gem 'capistrano-bundler', github: 'capistrano/bundler', :require => false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development, :test do
  gem 'rspec-rails', '2.14.1'
  gem 'guard-rspec', '1.2.1'
  gem 'guard-spork', '1.2.0'
  gem 'childprocess', '0.3.6'
  gem 'spork', '0.9.2'
  gem 'factory_girl_rails', '4.4.1'
  gem 'webmock', '1.18.0'
end

gem 'kaminari', '0.15.1'
gem 'haml-rails', '0.5.3'
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
source 'https://rubygems.org'

ruby '2.4.1'

gem 'dotenv', '~> 2.2.1'

gem 'pg', '~> 0.20.0'

gem 'rake', '~> 12.0.0'

gem 'rom', '~> 3.2.2'
gem 'rom-sql', '~> 1.3.2'

gem 'sass', '~> 3.4.23'

gem 'sinatra', '~> 2.0.0', require: 'sinatra/base'
gem 'sinatra-contrib', '~> 2.0.0'

gem 'sprockets', '~> 3.7.1'
gem 'sprockets-helpers', '~> 1.2.1'
gem 'sprockets-vue', '~> 0.1.0'

gem 'therubyracer', '~> 0.12.3'

gem 'uglifier', '~> 3.2.0'

group :test do
  gem 'rack-test', '~> 0.6.3', require: 'rack/test'

  # GEM для проверки соответсвия кода style guide
  gem 'rubocop', require: false

  gem 'rspec', '~> 3.6.0'
end

group :development, :test do
  # GEM для запуска rackup приложений
  gem 'shotgun'
end

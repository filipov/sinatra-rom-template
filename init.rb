require 'rubygems'
require 'bundler'

ENV['APP_ENV'] ||= 'development'

# Включаем GEMы из Gemfile
Bundler.require(:default, ENV['APP_ENV'].to_sym)

# Загружаем переменные среды для нашего окруения
# по умолчанию окружение: development
Dotenv.load! ".env.#{ENV['APP_ENV']}"

# Включаем библиотеки
require_all(File.dirname(__FILE__) + '/db/relations')
require_all(File.dirname(__FILE__) + '/db/repositories')

# Включаем модели сущностей и базу данных
require File.dirname(__FILE__) + '/db/setup'

# Включаем WEB-приложение
require_all(File.dirname(__FILE__) + '/app')

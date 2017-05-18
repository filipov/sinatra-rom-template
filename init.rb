require 'rubygems'
require 'bundler'

ENV['APP_ENV'] ||= 'development'

# Включаем GEMы из Gemfile
Bundler.require(:default, ENV['APP_ENV'].to_sym)

# Загружаем переменные среды для нашего окруения
# по умолчанию окружение: development
Dotenv.load! ".env.#{ENV['APP_ENV']}"

# Функция описывает рекурсивное включение .rb файлов из директории
def require_files(dir)
  files = []

  Dir.foreach(dir) do |path|
    if File.basename(path) != '.' && File.basename(path) != '..'
      path = "#{dir}/#{path}"

      files << path if File.file?(path) && File.extname(path) == '.rb'
      require_files(path) unless File.file?(path)
    end
  end

  files.each { |file| require file }
end

# Включаем библиотеки
require_files(File.dirname(__FILE__) + '/lib')

# Включаем модели сущностей и базу данных
require_files(File.dirname(__FILE__) + '/db')

# Включаем WEB-приложение
require_files(File.dirname(__FILE__) + '/app')

require 'rom/sql/rake_task'
require 'rspec/core/rake_task'

# если окружение приложения не указано и мы пытаемся запустить тестирование,
# то устанавливаем окружение приложение равное `test`, для всех остальных
# сценариев у нас прописана логика в init
ENV['APP_ENV'] = 'test' if !ENV['APP_ENV'] && ARGV[0] == 'test'

# включаем скрипт инициализации приложения
require File.dirname(__FILE__) + '/init'

ENV['RACK_ENV'] = ENV['APP_ENV']

# задача для конфигурирования хранилища для ROM, в данном случае-заглушка, так
# как мы уже инициализировали хранилище, когда включили init.rb
namespace :db do
  task :setup do
    STORAGE
  end
end

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = Dir.glob('spec/**/*_spec.rb')
  # t.rspec_opts = '--format documentation'
end

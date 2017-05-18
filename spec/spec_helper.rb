# включаем скрипт инициализации приложения
require File.dirname(__FILE__) + '/../init'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

module RSpec
  module Core
    class ExampleGroup
      def app
        App
      end
    end
  end
end

## Класс приложения
class App < Sinatra::Base
  include Datasum::API

  get '/' do
  end
end

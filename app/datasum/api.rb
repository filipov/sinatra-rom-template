module Datasum
  # Модуль описывает базовый API
  module API
    def self.included(app)
      app.get '/api' do
        json api: a
      end
    end
  end
end

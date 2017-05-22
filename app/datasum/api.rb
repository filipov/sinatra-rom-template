module Datasum
  # Модуль описывает базовый API
  module API
    def self.included(app)
      app.get '/api' do
        json api: AppRepo.new(STORAGE).apps.map { |e| e }
      end
    end
  end
end

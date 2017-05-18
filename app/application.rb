## Класс приложения
class App < Sinatra::Base
  include Datasum::API

  def self.route(method, path, opts, &block)
    super(method, path, opts, &block)
  end

  get '/' do
    <<-HTML
      <html>
        <head>
          <title>Datasum</title>
        </head>
        <body>
          <h1>Datasum</h1>
        </body>
      </html>
    HTML
  end
end

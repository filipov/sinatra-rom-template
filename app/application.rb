## Класс приложения
class App < Sinatra::Base
  set :environment, Sprockets::Environment.new

  environment.append_path "assets/stylesheets"
  environment.append_path "assets/javascripts"

  environment.js_compressor  = :uglify
  environment.css_compressor = :scss

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

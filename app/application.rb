## Класс приложения
class App < Sinatra::Base
  set :environment, Sprockets::Environment.new

  configure do
    environment.append_path 'assets/stylesheets'
    environment.append_path 'assets/javascripts'

    environment.js_compressor  = :uglify
    environment.css_compressor = :scss

    Sprockets::Helpers.configure do |config|
      config.environment = environment
      config.digest = true
      config.public_path = File.join(File.dirname(__FILE__), 'public', 'assets')
      config.debug = ASSETS_LIVE_COMPILE
    end
  end

  helpers do
    include Sprockets::Helpers
  end

  include Datasum::API

  def self.route(method, path, opts, &block)
    super(method, path, opts, &block)
  end

  get '/assets/*' do
    env['PATH_INFO'].sub!('/assets', '')
    settings.environment.call(env)
  end

  get '/' do
    <<-HTML
      <html>
        <head>
          <title>Datasum</title>
          <link rel="stylesheet" type="text/css" href="#{stylesheet_path('app.css')}">
        </head>
        <body>
          <h1>Datasum</h1>
          <script src="#{javascript_path('app.js')}"></script>
        </body>
      </html>
    HTML
  end
end

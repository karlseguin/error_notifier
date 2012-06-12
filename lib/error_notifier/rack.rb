module ErrorNotifier
  class Rack
    def initialize(app)
      @app = app
    end

    def call(env)
      begin
        @app.call(env)
      rescue Exception => e
        ErrorNotifier.send(e, extract_data(env))
        raise
      end
    end

    def extract_data(env)
      {:url => env['REQUEST_URI'], :ua => env['HTTP_USER_AGENT']}
    end
  end
end
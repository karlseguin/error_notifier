require_relative 'error_notifier/rack'
require_relative 'error_notifier/configuration'

require 'json'
require 'rest_client'

module ErrorNotifier
  Version = '0.0.2'

  class << self
    attr_accessor :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end

    def send(exception, data = {})
      exception = unwrap(exception)
      data[:message] = exception.inspect
      data[:stack] = exception.backtrace.join('\n')
      data[:site] = @configuration.site
      begin
        RestClient.post(@configuration.url, data.to_json, :content_type => :json, :accept => :json)
      rescue
        nil
      end
    end

    def unwrap(exception)
      return exception.original_exception if exception.respond_to?(:original_exception)
      return exception.continued_exception if exception.respond_to?(:continued_exception)
      exception
    end
  end
end
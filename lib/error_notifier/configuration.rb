module ErrorNotifier
  class Configuration
    attr_accessor :url, :site, :timeout, :open_timeout
    def initialize
      @timeout = 5
      @open_timeout = 5
    end
  end
end
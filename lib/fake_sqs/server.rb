module FakeSQS
  class Server

    attr_reader :host, :port

    def initialize(options)
      @host = options.fetch(:host)
      @hostname = options.fetch(:hostname, nil)
      @port = options.fetch(:port)
    end

    def hname
      @_hname ||= @hostname
      @_hname ||= @host
      @_hname
    end

    def url_for(queue_id)
      "http://#{hname}:#{port}/#{queue_id}"
    end

  end
end

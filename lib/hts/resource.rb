module Hts
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def get_request(url, params: {}, headers: {})
      handle_response client.connection.get(url, params, headers)
    end

    def handle_response(response)
      case response.status
      when 400
        raise Error, "#{response.body}"
      when 401
        raise Error, "#{response.body}"
      when 403
        raise Error, "#{response.body}"
      when 404
        raise Error, "#{response.body}"
      when 429
        raise Error, "#{response.body}"
      when 500
        raise Error, "#{response.body}"
      when 503
        raise Error, "#{response.body}"
      end

      response
    end

  end
end

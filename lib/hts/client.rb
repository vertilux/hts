require "faraday"
require "faraday_middleware"

module Hts
  class Client
    BASE_URL = "https://hts.usitc.gov/api"

    attr_reader :base_url, :adapter

    def initialize(adapter: Faraday.default_adapter)
      @adapter = adapter
    end

    def search
      SearchResource.new(self)
    end

    def connection
      @connection ||= Faraday.new do |con|
        con.url_prefix = BASE_URL
        con.request :json
        con.response :json, content_type: "application/json"
        con.adapter adapter
      end
    end
  end
end

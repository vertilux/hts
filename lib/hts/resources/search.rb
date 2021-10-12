module Hts
  class SearchResource < Resource

    def query(**params)
      Search.new get_request("search", params: params).body
    end

  end
end

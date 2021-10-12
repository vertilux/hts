# frozen_string_literal: true

require_relative "hts/version"

module Hts
  autoload :Client, "hts/client"
  autoload :Error, "hts/error"
  autoload :Object, "hts/object"
  autoload :Resource, "hts/resource"

  autoload :SearchResource, "hts/resources/search"
  autoload :Search, "hts/objects/search.rb"
end

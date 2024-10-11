# frozen_string_literal: true

require_relative "random_map/version"

module RandomMap
  class Error < StandardError; end

  class Map
    def initialize; end

    def generate
      print "We made a map"
    end
  end
end

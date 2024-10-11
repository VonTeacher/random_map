# frozen_string_literal: true

require_relative "random_map/version"

module RandomMap
  class Error < StandardError; end

  class Map
    attr_reader :rows, :cols

    def initialize(rows: 12, cols: 48)
      @rows = rows
      @cols = cols
    end

    def generate
      print "rows #{rows}, cols #{cols}"
    end
  end
end

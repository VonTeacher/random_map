# frozen_string_literal: true

##
# Main file of the random map generator gem

require_relative "random_map/version"

module RandomMap
  class Error < StandardError; end

  ##
  # Class that generates the random map
  class Map
    attr_reader :rows, :cols

    def initialize(rows: 12, cols: 48)
      @rows = rows
      @cols = cols
    end

    def generate
      print_top_border
      print_contents
      print_bottom_border
    end

    private

    def print_top_border
      print "#{Icons::CORNER_TOP_LEFT}#{Icons::HORIZONTAL_BORDER * cols}#{Icons::CORNER_TOP_RIGHT}\n"
    end

    def print_contents
      rows.times do
        print Icons::VERTICAL_BORDER

        index = 0
        while index < cols
          print Icons::EMPTY
          index += 1
        end

        print "#{Icons::VERTICAL_BORDER}\n"
      end
    end

    def print_bottom_border
      print "#{Icons::CORNER_BOTTOM_LEFT}#{Icons::HORIZONTAL_BORDER * cols}#{Icons::CORNER_BOTTOM_RIGHT}\n"
    end
  end
end

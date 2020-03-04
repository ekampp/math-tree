require "math/tree/version"
require_relative "parser"

module Math
  module Tree
    class Error < StandardError; end

    attr_reader :parser

    def initialize(expression)
      @parser = Parser.new(expression)
    end

    def draw
      parser.draw
    end

    alias :to_s :draw
  end
end

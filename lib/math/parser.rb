require "dentaku"

module Math
  module Tree
    class Parser
      attr_reader :_parser

      def initialize(expression)
        tokens = ::Dentaku::Tokenizer.new.tokenize(expression)
        @_parser = ::Dentaku::Parser.new(tokens)
        p _parser
      end
    end
  end
end

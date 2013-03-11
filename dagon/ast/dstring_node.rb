module Dagon
  module AST
    class DStringNode < Node
      def initialize filename, line_number, string
        super filename, line_number
        @value = string
      end

      def evaluate interpreter
        strings = @value.map do |node|
          node.evaluate(interpreter).to_s
        end
        interpreter.string(strings.join)
      end
    end
  end
end

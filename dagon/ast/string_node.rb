require 'core/string'

module Dagon
  module AST
    class StringNode < Node
      def initialize filename, line_number, string
        super filename, line_number
        @value = string
      end

      def evaluate interpreter
        Dagon::Core::DG_String_Class.new.dagon_send(interpreter, "new", @value)
      end
    end
  end
end

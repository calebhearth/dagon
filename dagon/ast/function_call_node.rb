module Dagon
  module AST
    class DagonError < StandardError; end
    class DagonArgumentError < DagonError; end

    class FunctionCallNode < Node
      def initialize filename, line_number, object, function_name, arguments, block
        super filename, line_number
        @function_name = function_name
        @arguments = arguments
        @block = block
        @object = object
      end

      def evaluate interpreter
        arguments = @arguments.map { |argument| argument.evaluate interpreter }
        if @block
          arguments << @block.evaluate(interpreter)
        end
        object = if @object
                   @object.evaluate interpreter
                 else
                   interpreter.frame.object
                 end
        frame = Dagon::Core::Frame.new(object, @function_name)
        interpreter.push_frame frame
        result = object.dagon_send interpreter, @function_name, *arguments
        interpreter.pop_frame
        result
      end
    end
  end
end

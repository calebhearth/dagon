module Dagon
  module Core
    class DG_Class
      attr_reader :name
      def initialize name = nil, parent = nil
        @constants = {}
        @methods = {
          init: ->(vm, ref, *args) { },
          exit: ->(vm, ref, *args) { exit(0) },
          puts: ->(vm, ref, *args) { puts *args.map(&:to_s) },
          print: ->(vm, ref, *args) { print *args.map(&:to_s) },
          gets: ->(vm, ref, *args) { DG_String.new($stdin.gets) },
          eval: ->(vm, ref, *args) {
            tokens = Dagon::Scanner.tokenize(args[0].value, '(eval)')
            tree = Dagon::Parser.parse(tokens, '(eval)', false)
            tree.evaluate(vm)
          },
          require: ->(vm, ref, *args) {
            filename = args[0]
            dir = vm.globals["$dagon_cwd"]
            program = File.read("#{dir}/#{filename}.dg")
            tokens = Dagon::Scanner.tokenize(program, filename)
            tree = Dagon::Parser.parse(tokens, filename, false)
            tree.evaluate(vm)
          }
        }
        @class_ivars = {}
        @class_methods = {
          new: ->(vm, ref, *args) {
            obj = ref.dagon_allocate
            obj.dagon_send(vm, "init", *args)
            obj
          }
        }
        @name = name || "Class"
        @parent = parent
      end

      def dagon_const_get constant
        @constants[constant.to_sym]
      end

      def dagon_const_set constant, value
        @constants[constant.to_sym] = value
      end

      def add_class_method name, block
        @class_methods[name.to_sym] = block
      end

      def add_method name, block
        @methods[name.to_sym] = block
      end

      def get_method name
        @methods[name.to_sym]
      end

      def dagon_allocate
        DG_Object.new(self)
      end

      def dagon_send interpreter, name, *args
        method = @class_methods[name.to_sym]
        if method
          method.call(interpreter, self, *args) || Dvoid
        elsif @parent
          @parent.dagon_send(interpreter, name, *args)
        else
          $stderr.puts "Undefined method #{name} for #{to_s}"
          exit(1)
        end
      end

      def to_s
        @name
      end
    end
  end
end
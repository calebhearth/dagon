module Dagon
  class Block < Node
    def initialize code, variables, binding
      super(code, binding)
      @variables = variables
    end
    def reduce
      type = next_node
      statements = next_node
      DBlock.new(statements, @variables, DBinding.new({}, binding))
    end
  end

  class DBlock
    def initialize code, variables, binding
      @code = code
      @variables = variables
      @binding = binding
    end

    def binding= binding
      @binding = binding
    end

    def invoke *args
      assignments =  @variables.zip(args)
      assignments.each do |name, value|
        @binding.define(name.to_sym, value)
      end
      @code.each do |statement|
        Statement.new(statement, @binding).reduce
      end
    end
  end
end

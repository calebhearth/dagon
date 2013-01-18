module Dagon
  class Identifier < Node
    def initialize ast, binding
      super
      parse
    end
    def lookup
      binding.lookup(to_sym)
    end
    def parse
      if (node = next_node) != node_name
        error "Invalid identifier #{node}"
      end
      @name = next_node
    end
    def to_sym
      @name.to_sym
    end
    def node_name
      :identifier
    end
    def to_s
      to_sym
    end
  end
end

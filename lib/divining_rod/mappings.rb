module DiviningRod
  class Mappings

    class << self

      attr_accessor :root_definition
      
      def define(opts = {})
        @root_definition = Definition.new { true }
        yield Mapper.new(@root_definition, opts)
      end
      
      def evaluate(obj)
        @root_definition.evaluate(obj)
      end
      
    end

  end
end
# frozen_string_literal: true

module D4C
  class ConsoleOptionSet
    attr_reader :options

    Option = Struct.new(:name, :desc, :blk)

    def initialize
      @options = []
    end

    def add_option(name, desc = 'No description', &blk)
      @options << Option.new(name, desc, blk)
    end
  end
end

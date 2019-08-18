# frozen_string_literal: true

require_relative 'prepended_options'

module D4C
  module PrependOptionAccessor
    include PrependedOptions

    def initialize(initial_variable_values = {}, &block)
      prepended_options.each do |option|
        self.class.attr_accessor option.name
      end

      super
    end
  end
end

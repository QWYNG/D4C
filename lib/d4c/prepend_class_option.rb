# frozen_string_literal: true

require_relative 'prepended_options'

module D4C
  module PrependClassOption
    include PrependedOptions

    def initialize(args = [], local_options = {}, config = {})
      prepended_options.each do |option|
        self.class.class_option option.name, type: :boolean, default: false, desc: option.desc
      end

      super
    end
  end
end

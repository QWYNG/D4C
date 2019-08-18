# frozen_string_literal: true

require_relative 'prepended_options'

module D4C
  module PrependOptionSetter
    include PrependedOptions

    def initialize(app, options = {})
      prepended_options.each do |option|
        app.send(option.name + '=', options[option.name.to_sym])
      end

      super
    end
  end
end

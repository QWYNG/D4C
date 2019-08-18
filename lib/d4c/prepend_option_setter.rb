# frozen_string_literal: true

require_relative 'prepended_options'

module D4C
  module PrependOptionSetter
    include PrependedOptions

    def initialize(app, options = {})
      prepended_options.each do |option|
        app.send(setter_method(option.name), options[option.name.to_sym])
      end

      super
    end

    def setter_method(name)
      name.to_s + '='
    end
  end
end

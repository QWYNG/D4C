# frozen_string_literal: true

module D4C
  class Railtie < ::Rails::Railtie
    console do |app|
      include PrependedOptions

      prepended_options.each do |option|
        option.blk.call if app.send(option.name)
      end
    end
  end
end

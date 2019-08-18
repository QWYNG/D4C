# frozen_string_literal: true

module D4C
  module PrependedOptions
    def prepended_options
      D4C::Console.options
    end
  end
end

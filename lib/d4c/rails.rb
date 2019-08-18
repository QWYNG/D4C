# frozen_string_literal: true

require 'rails/command'
require 'rails/commands/console/console_command'
require 'rails/application'
require_relative 'prepend_option_setter'
require_relative 'prepend_option_accessor'
require_relative 'prepend_class_option'

module Rails
  Application.prepend D4C::PrependOptionAccessor
  Console.prepend D4C::PrependOptionSetter
  Command::ConsoleCommand.prepend D4C::PrependClassOption
end

# frozen_string_literal: true

require 'test_helper'

class D4C::Test < ActiveSupport::TestCase
  # in test/dummy/config/application
  # D4C::Console.add_option "d4c" do
  #   $ran_block = true
  # end

  test 'prepend console option' do
    console = Rails::Console.new(app, parse_arguments(['--d4c']))

    assert_equal({ 'sandbox' => false, 'd4c' => true }, console.options)
    assert(console.app.d4c)
  end

  test 'execute prepend option' do
    $ran_block = false

    Rails::Console.new(app, parse_arguments(['--d4c']))

    assert($ran_block)
  end

  test 'console with no  d4c option arg' do
    console = Rails::Console.new(app, parse_arguments(['--sandbox']))

    assert_equal({ 'sandbox' => true, 'd4c' => false }, console.options)
    assert_not(console.app.d4c)
  end

  test 'execute prepend option with no prepend option' do
    $ran_block = false

    Rails::Console.new(app)

    assert_not($ran_block)
  end

  private

  def app
    @app = Rails.application
  end

  def parse_arguments(args)
    command = Rails::Command::ConsoleCommand.new([], args)
    command.options
  end
end

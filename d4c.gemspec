# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'd4c/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'd4c'
  spec.version     = D4C::VERSION
  spec.authors     = ['qwyng']
  spec.email       = ['ikusawasi@gmail.com']
  spec.homepage    = 'https://github.com/QWYNG/d4c'
  spec.summary     = 'easy to add rails console option.'
  spec.description = 'DSL for add rails console option.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 5.1.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'sqlite3'
end

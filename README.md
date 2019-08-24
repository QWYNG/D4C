# D4C [![Build Status](https://travis-ci.org/QWYNG/D4C.svg?branch=master)](https://travis-ci.org/QWYNG/baby_face)
Easy add options to Rails console  
[My blog](https://sasa5740.hatenablog.com/entry/2019/08/20/090000?_ga=2.202416785.1243811551.1566614707-1938314347.1562511586)

## Prerequisites
- Rails >= 5.1.0 Application
## Installation
Add this line to your application's Gemfile:

```ruby
gem 'd4c'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install d4c
```
## Usage
Add option in _config/application.rb_

```ruby
# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

D4C::Console.add_option 'hello' do
  puts "hello"
end

module YourRailsApplication
  class Application < Rails::Application

```

### Note
You need to put `D4C::Console.add_option` before first Rails::Application.
see also: https://guides.rubyonrails.org/configuring.html

### Option Description
you can set option description

```ruby
D4C::Console.add_option 'hello', 'say hello!' do
  puts "hello"
end
```

```bash
$rails c -h
Running via Spring preloader in process 13861
Usage:
  bin/rails console [environment] [options]

Options:
  -e, [--environment=ENVIRONMENT]  # Specifies the environment to run this console under (test/development/production).
  -s, [--sandbox], [--no-sandbox]  # Rollback database modifications on exit.
      [--hello], [--no-hello]      # say hello

```
## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/QWYNG/d4c. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.



## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

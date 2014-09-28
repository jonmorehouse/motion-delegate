# motion-delegate

A small gem to make communication between RubyMotion objects easier. This gem creates a simple dsl for setting up delegates for method calls and event handlers easily.

## Installation

Add this line to your application's Gemfile:

    gem 'motion-delegate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-delegate

## Usage

### Delegate
~~~ ruby

class Model
  include Delegate::Delegatable  

  delegate :array, :length, :first, :empty?

  def initialize()
    @array = []
  end
end

Model.new.length # => calls @array.length
~~~

### Event Delegate

~~~ ruby
class Service
  include EM::Eventable
end

class Model
  include Delegate::Delegatable  

  event_delegate :service, :new_item, :removed_item
  # event_delegate Service, :new_item, :removed_item also works. Delegate will create the Service

  def initialize(attrs = {})
    delegate
  end
  
  def service
    @service ||= Service.new
  end

  def new_item(*args)
    # => called with new_item event 
  end
end
~~~

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

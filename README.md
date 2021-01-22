# Hiroyuki
Hiroyuki is a hash mapping tool.

Mapping is translated into Japanese as shazou.
In Japan, it is loved as Hiroyuki.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hiroyuki'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hiroyuki

## Usage

```ruby
class MappedHash < Hash
  include Hiroyuki

  property :id, -> { origin[:user_id] }
  property :name, -> { origin[:namae] }
end

before = { user_id: 1, namae: "ogontaro" }
after = MappedHash.new(before) #-> { id: 1, name: "ogontaro" }
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ogontaro/hiroyuki. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/hiroyuki/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hiroyuki project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hiroyuki/blob/master/CODE_OF_CONDUCT.md).

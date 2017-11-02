# Karashi

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/karashi`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'karashi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install karashi

## Usage

23区の駅の取得
```ruby
Karashi::Station.all_tokyo23
#=> Array of Karashi::Station Object

Karashi::Station.all_tokyo23.map{|station| station.name}
#=> ["東京", "新橋", "品川", ... ]
```

駅の詳細情報の取得
```ruby
station_object = Karashi::Station.all_tokyo23[0]
#=> #<Karashi::Station:0x000055cd51f158 ... >
station_object.name
#=> "東京"
station_object.code
#=> "1130101"
station_object.city
#=> "千代田区"
```

駅コードから検索
```ruby
station_object = Karashi::Station.find_by_code("1130101")
#=> #<Karashi::Station:0x000055cd51f158 ... >
station_object.name
#=> "東京"
station_object.city
#=> "千代田区"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/karashi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Karashi project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/karashi/blob/master/CODE_OF_CONDUCT.md).

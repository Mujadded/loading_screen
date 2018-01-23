# LoadingScreen

This gem allow to load a simple loading screen on any page that you want. This works in a similar way of simple_form

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'loading_screen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install loading_screen

## Usage

Add this line in application.js
```
//= require loading_screen
```

Add this line in application.css
```
 *= require loading_screen
```

All done ! Now to use in any view add
```
<%= loading_screen %>
```
And you are done :)
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/loading_screen. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LoadingScreen project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/loading_screen/blob/master/CODE_OF_CONDUCT.md).

# LoadingScreen

This gem allow to load a simple loading screen on any page that you want.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'loading_screen', git: https://github.com/Mujadded/loading_screen.git
for the latest development branch
or 

gem install loading_screen
for the stable branch
```

And then execute:

    $ bundle

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

## Contributing

Bug reports and pull requests are welcome. So fork the repo and create a pull :) .

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

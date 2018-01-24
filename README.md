# LoadingScreen

This gem allow to load a simple loading screen on any page that you want.

## Installation

Add this line to your application's Gemfile:

for the latest development branch
```ruby
gem 'loading_screen', git: https://github.com/Mujadded/loading_screen.git
```

for the stable branch
```ruby
gem 'loading_screen'
```

And then execute:

    $ bundle install

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

Currently only fullscreen loading animation is supported. `Div` based loading animation feature will be added soon.

## Contributing

Bug reports and pull requests are welcome. So fork the repo and create a pull :) .

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

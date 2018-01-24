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

All now to use it in any view just add in any .erb file inside view
```
<%= loading_screen %>
```

Or if you want to add custom gif as the loading screen just download a gif and put it inside the assets/images/
```
<%= loading_screen gif: 'your gif file name witout ".gif" ' %>
```
And you are done. Enjoy !
## Development

Currently only fullscreen loading animation is supported. `Div` based loading animation feature will be added soon.

## Contributing

Bug reports and pull requests are welcome. So fork the repo and create a pull :) .

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

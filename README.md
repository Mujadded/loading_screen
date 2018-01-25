# LoadingScreen
[![Gem Version](https://badge.fury.io/rb/loading_screen.svg)](https://badge.fury.io/rb/loading_screen)

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
Gem has dependency on jquery so if not already added, please add
```
//= require jquery
```
and then this line in application.js
```
//= require loading_screen
```

After that add this line in application.css
```
 *= require loading_screen
```

We are all set, now to use it in any view file ( for e.g.: index.html.erb) just add:
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

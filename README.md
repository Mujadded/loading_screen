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
### Using available CSS animations
We are all set, to use it with default `rotating_square` animation in any view file ( for e.g.: index.html.erb) just add:
```
<%= loading_screen %>
```

There are also other loading animation available for you to choose from just add `style` option, like:

```
<%= loading_screen style: :double_bounce %>
```

```
<%= loading_screen style: :rectangle_bounce %>
```

Other animations will be available shortly...

### Using custom gif images

if you want to add custom gif as the loading screen just download a gif and put it inside the `assets/images/` and add `gif` option:
```
<%= loading_screen gif: 'your gif file name witout ".gif" ' %>
```
And you are done. Enjoy !

### Using custom colors

You can change the color of the css animation and also the background of the loader just add `color` option:

```
<%= loading_screen color: 'red', background: 'green' %>
```
Color format like `hash`, `rgb`, `rgba`, etc  all css color format are acceptable

## Development

Currently only fullscreen loading animation is supported. `Div` based loading animation feature will be added soon.

## Contributing

Bug reports and pull requests are welcome. So fork the repo and create a pull :) .

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

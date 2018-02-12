$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "loading_screen/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name          = "loading_screen"
  s.version       = LoadingScreen::VERSION
  s.authors       = ["Mujadded Al Rabbani Alif", "Yearsin Ar Rahman", "Swakhar Dey"]
  s.email         = ["Mujadded.alif@gmail.com"]

  s.summary       = "Loading screen for time-consuming background task"
  s.description   = "It loads up a animation until the full page is loaded in the browser. It can load provided css animation and you can also add custom gif to show in the loading screen"
  s.homepage      = "https://github.com/Mujadded/loading_screen"
  s.license       = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0.rc1"
  s.add_dependency "rspec-rails"
  s.add_dependency "jquery-rails", "~> 4.3", ">= 4.3.1"
  s.add_development_dependency "sqlite3"
end

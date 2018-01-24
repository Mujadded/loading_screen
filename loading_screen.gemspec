
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "loading_screen/version"

Gem::Specification.new do |spec|
  spec.name          = "loading_screen"
  spec.version       = LoadingScreen::VERSION
  spec.authors       = ["Mujadded Al Rabbani Alif"]
  spec.email         = ["Mujadded.alif@gmail.com"]

  spec.summary       = "Loading screen for time-consuming background task"
  spec.description   = "It loads up a animation until the full page a loaded in the browser"
  spec.homepage      = "https://github.com/Mujadded/loading_screen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

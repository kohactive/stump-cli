# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stump-cli/version'

Gem::Specification.new do |spec|
  spec.name          = "stump-cli"
  spec.version       = StumpCLI::VERSION
  spec.authors       = ["Andy Richardson"]
  spec.email         = ["andy@kohactive.com"]
  spec.summary       = "Initialize a WordPress project based on the Stump theme"
  spec.description   = ""
  spec.homepage      = "https://github.com/kohactive/stump-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "thor", '~> 0.19', '>= 0.19.1'
  spec.add_dependency "wordmove", "~> 1.2.0", '>= 1.2.0'
end

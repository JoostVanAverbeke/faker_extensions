# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker_extensions/version'

Gem::Specification.new do |spec|
  spec.name          = "faker_extensions"
  spec.version       = FakerExtensions::VERSION
  spec.authors       = ["Joost Van Averbeke"]
  spec.email         = ["joost.van.averbeke@telenet.be"]
  spec.description   = %q{Extensions of the faker gem. Provide random Date, ...}
  spec.summary       = %q{Extensions of the faker gem.}
  spec.homepage      = "https://github.com/JoostVanAverbeke"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ios_icon_gen/version'

Gem::Specification.new do |spec|
  spec.name          = "ios_icon_gen"
  spec.version       = IosIconGen::VERSION
  spec.authors       = ["Allan Davis"]
  spec.email         = ["cajun.code@gmail.com"]
  spec.description   = %q{Generate iOS Icons for app}
  spec.summary       = %q{Generate all needed iOS icons for an app based on one 1024x1024 png image}
  spec.homepage      = "https://github.com/cajun-code/ios_icon_gen"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "thor", '~> 0.19.1'
  spec.add_dependency "rmagick", '~> 2.13.2'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

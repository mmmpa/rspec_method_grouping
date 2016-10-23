# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_method_grouping/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_method_grouping"
  spec.version       = RspecMethodGrouping::VERSION
  spec.authors       = ["mmmpa"]
  spec.email         = ["mmmpa.mmmpa@gmail.com"]

  spec.summary       = %q{helper method grouping}
  spec.description   = %q{helper method grouping}
  spec.homepage      = "http://mmmpa.net"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end

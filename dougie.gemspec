# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dougie/version'

Gem::Specification.new do |spec|
  spec.name          = "dougie"
  spec.version       = Dougie::VERSION
  spec.authors       = ["Michael Dijkstra"]
  spec.email         = ["michael@xxix.co"]
  spec.summary       = "A Shopify workflow gem"
  spec.description   = "Dougie makes it easier for developers and designers to develop themes and deploy stores on Shopify."
  spec.homepage      = "https://github.com/xxix/dougie"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['dougie']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "shopify_theme", '~> 0.0'
  spec.add_runtime_dependency "shopify_api", '~> 3.2'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
end

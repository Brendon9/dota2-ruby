# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dota2/version'

Gem::Specification.new do |spec|
  spec.name          = "dota2-ruby"
  spec.version       = Dota2::VERSION
  spec.authors       = ["Brendon Harris"]
  spec.email         = ["brendon.harris9@gmail.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "webmock", "~> 1.6"
  spec.add_development_dependency "guard-rspec", "~> 0.4"

  spec.add_dependency 'httmultiparty', '~> 0.3.0'
  spec.add_dependency 'hashie', '~> 2.0'

  spec.add_runtime_dependency 'multi_json', '~> 1.0'
  spec.add_runtime_dependency 'yajl-ruby', '~> 0.8'
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.6'
  spec.add_runtime_dependency 'rash', '~> 0.3'
end

# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "loggregator_messages"
  spec.version       = '0.0.1.pre'
  spec.authors       = ["Pivotal"]
  spec.email         = ["cf-eng@pivotallabs.com"]
  spec.description   = "Library for all of the protocol buffer messages."
  spec.summary       = spec.description
  spec.homepage      = "http://github.com/cloudfoundry/loggregator_messages"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = Gem::Requirement.new(">= 1.9.3")

  spec.add_dependency "beefcake", "~> 0.3.7"

  spec.add_development_dependency "bundler", "~> 1.3"
end

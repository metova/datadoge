# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'datadoge/version'

Gem::Specification.new do |spec|
  spec.name          = 'datadoge'
  spec.version       = Datadoge::VERSION
  spec.authors       = ['Dave Lane']
  spec.email         = ['dave.lane@metova.com']
  spec.summary       = 'A simple integration of Datadog to report on Rails application performance.'
  spec.description   = 'This gem is notified of basic performance metrics for a Rails application, and sends the measurements to Datadog.'
  spec.homepage      = ''
  spec.license       = 'Apache'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 0'

  spec.add_runtime_dependency 'dogstatsd-ruby', "> 0"
  spec.add_runtime_dependency 'gem_config', '~> 0'
end

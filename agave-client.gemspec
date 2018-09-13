# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'agave/version'

Gem::Specification.new do |spec|
  spec.name          = 'agave-client'
  spec.version       = Agave::VERSION
  spec.authors       = ['Stefano Verna', 'Joe Yates', 'Domenico Garofoli', 'Damiano Giacomello']
  spec.email         = ['s.verna@cantierecreativo.net', 'joe.yates@gmail.com', 'd.garofoli@cantierecreativo.net', 'giacomello.damiano@gmail.com']

  spec.summary       = 'Ruby client for AgaveCMS API'
  spec.description   = 'Ruby client for AgaveCMS API'
  spec.homepage      = 'https://github.com/italia/ruby-agave-client'
  spec.license       = 'BSD-3'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|build|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubyzip'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'diff_dirs'
  spec.add_development_dependency 'coveralls'

  spec.add_runtime_dependency 'faraday', ['>= 0.9.0']
  spec.add_runtime_dependency 'faraday_middleware', ['>= 0.9.0']
  spec.add_runtime_dependency 'activesupport', ['>= 4.2.7']
  spec.add_runtime_dependency 'fastimage'
  spec.add_runtime_dependency 'downloadr'
  spec.add_runtime_dependency 'addressable'
  spec.add_runtime_dependency 'thor'
  spec.add_runtime_dependency 'imgix', ['>= 0.3.1']
  spec.add_runtime_dependency 'toml'
  spec.add_runtime_dependency 'cacert'
  spec.add_runtime_dependency 'dotenv'
  spec.add_runtime_dependency 'pusher-client'
  spec.add_runtime_dependency 'listen'
  spec.add_runtime_dependency 'json_schema'
end
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemologist/version'

Gem::Specification.new do |spec|
  spec.name           = "gemologist"
  spec.version        = Gemologist::VERSION
  spec.authors        = [ "Luca Guidi" ]
  spec.email          = [ "me@lucaguidi.com" ]
  spec.description    = "Scan your Gemfile for gems that can be upgraded."
  spec.summary        = "A specialist in gems"
  spec.homepage       = "https://github.com/jodosha/gemologist"
  spec.license        = "MIT"
  spec.files          = `git ls-files`.split($/)
  spec.executables    = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths  = [ "lib" ]

  spec.add_dependency 'bundler',    '~> 1.3'
  spec.add_dependency 'httparty',   '~> 0.8.3'
  spec.add_dependency 'multi_json', '~> 1.3.5'
  spec.add_dependency 'sinatra',    '~> 1.3.2'

  spec.add_development_dependency "rake"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ember-uploader-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "ember-uploader-rails"
  spec.version       = EmberUploader::Rails::VERSION
  spec.authors       = ["Nick Geerts"]  
  spec.description   = %q{Ember-uploader packaged for the Rails assets pipeline.}
  spec.summary       = %q{Ember-uploader packaged for the Rails assets pipeline.}
  spec.homepage      = "http://github.com/njjkgeerts/ember-uploader-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ember-rails"
  spec.add_dependency "ember-source"

  spec.add_development_dependency "bundler", ">= 1.3"
  spec.add_development_dependency "rake"
end

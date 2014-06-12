# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'odesk/api/version'

Gem::Specification.new do |spec|
  spec.name          = "odesk-api"
  spec.version       = Odesk::Api::VERSION
  spec.authors       = ["Maksym Novozhylov"]
  spec.email         = ["mnovozhilov@odesk.com"]
  spec.summary       = %q{Ruby bindings for oDesk API.}
  spec.description   = %q{Ruby bindings for oDesk API makes your life easier due to working with your oDesk's data.}
  spec.homepage      = "http://developers.odesk.com"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

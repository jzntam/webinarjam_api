# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webinarjam_api/version'

Gem::Specification.new do |spec|
  spec.name          = "webinarjam_api"
  spec.version       = WebinarjamApi::VERSION
  spec.authors       = ["Jason Tam"]
  spec.email         = ["jason@wishpond.com"]

  spec.summary       = %q{WebinarJam API Wrapper}
  spec.description   = %q{A simple ruby API wrapper for retrieving webinar data}
  spec.homepage      = "https://github.com/jzntam/webinarjam_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end

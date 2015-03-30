# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openproject/google_analytics/version'

Gem::Specification.new do |spec|
  spec.name          = "openproject-google_analytics"
  spec.version       = Openproject::GoogleAnalytics::VERSION
  spec.authors       = ["Finn GmbH"]
  spec.email         = ["info@finn.de"]
  spec.summary       = %q{Insert google analytics script}
  spec.description   = %q{Insert google analytics script in all pages}
  spec.homepage      = "https://www.openproject.org/projects/openproject-google_analytics"
  spec.license       = "GPLv3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "google-analytics-rails"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
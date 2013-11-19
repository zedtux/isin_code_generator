# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'isin_code_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "isin_code_generator"
  spec.version       = IsinCodeGenerator::VERSION
  spec.authors       = ["zedtux"]
  spec.email         = ["zedtux@zedroot.org"]
  spec.description   = %q{Simple random ISIN Code generator}
  spec.summary       = %q{This gem generates randomly some ISIN Codes based on the description from Wikipedia (http://en.wikipedia.org/wiki/International_Securities_Identification_Number)}
  spec.homepage      = "https://github.com/zedtux/isin_code_generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
end

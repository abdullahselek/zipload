# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipload/version'

Gem::Specification.new do |spec|
  spec.name          = "zipload"
  spec.version       = Zipload::VERSION
  spec.authors       = ["Abdullah Selek"]
  spec.email         = ["abdullahselek@yahoo.com"]

  spec.summary       = %q{Download and extract zipped files}
  spec.description   = %q{Download zipped file from given url and extract}
  spec.homepage      = "https://github.com/abdullahselek/zipload"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 1.9.2"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubyzip", "~> 1.2.0"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end

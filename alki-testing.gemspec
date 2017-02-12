# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alki/testing/version'

Gem::Specification.new do |spec|
  spec.name          = "alki-testing"
  spec.version       = Alki::Testing::VERSION
  spec.authors       = ["Matt Edlefsen"]
  spec.email         = ["matt.edlefsen@gmail.com"]

  spec.summary       = %q{Testing helper library}
  spec.description   = %q{Bake in simple assumptions about testing to make bootstrapping tests faster.}
  spec.homepage      = "https://github.com/alki-project/alki-testing"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.0"
  spec.add_dependency "minitest", "~> 5.0"
end

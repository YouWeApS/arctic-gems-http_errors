
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "http_error/version"

Gem::Specification.new do |spec|
  spec.name          = "http-errors"
  spec.version       = HttpErrors::VERSION
  spec.authors       = ["Emil Kampp"]
  spec.email         = ["emil@kampp.me"]

  spec.summary       = 'Easy way to raise HTTP errors from your ruby application'
  spec.description   = 'Easy way to raise HTTP errors from your ruby application'
  spec.homepage      = "https://github.com/YouWeApS/arctic-gems-http_errors"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "activesupport", "~> 5.1"
end

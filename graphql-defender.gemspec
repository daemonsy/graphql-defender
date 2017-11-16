# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql/defender/version'

Gem::Specification.new do |spec|
  spec.name          = "graphql-defender"
  spec.version       = Graphql::Defender::VERSION
  spec.authors       = ["Damon Aw"]
  spec.email         = ["daemonsy@gmail.com"]

  spec.summary       = "Like rack-attack, but for GraphQL. This is under development."
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/daemonsy/graphql-defender"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end

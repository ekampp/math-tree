
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "math/tree/version"

Gem::Specification.new do |spec|
  spec.name          = "math-tree"
  spec.version       = Math::Tree::VERSION
  spec.authors       = ["Emil Kampp"]
  spec.email         = ["emil@kampp.me"]

  spec.summary       = "Build decision trees from math expressions"
  spec.description   = <<~STR
    This gem is a fun little tool for converting mathematical expressions into decision trees and
    evaluating them as such.
  STR
  spec.homepage      = "https://github.com/ekampp"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-its", "~> 1.3"

  spec.add_dependency "dentaku", "~> 3.3.4"
end

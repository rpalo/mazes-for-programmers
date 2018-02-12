
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mazes/version"

# Gem specification for this project
Gem::Specification.new do |spec|
  spec.name          = "mazes"
  spec.version       = Mazes::VERSION
  spec.authors       = ["Ryan Palo"]
  spec.email         = ["ryan@thepalos.com"]

  spec.summary       = "My implementation of Mazes for Programmers exercises."
  spec.description   = File.read("README.md")
  spec.homepage      = "https://github.com/rpalo/mazes-for-programmers"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "chunky_png"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end

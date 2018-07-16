
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wrap_word/version"

Gem::Specification.new do |spec|
  spec.name          = "wrap_word"
  spec.version       = WrapWord::VERSION
  spec.authors       = ["Emma Corbett"]
  spec.email         = ["emma@madetech.com"]

  spec.summary       = %q{Split a long line of words into smaller lines of a certain length.}
  spec.description   = "This Gem will split a long line into smaller lines with a maximum amount of characters. In addition it will split the lines at the end of words if this is possible to do so i.e. if there are no words longer than the maximum number of characters. The default line length is set at 20."
  spec.homepage      = "https://github.com/elcorbs/wrap_word"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "gem"
end

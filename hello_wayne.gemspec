# frozen_string_literal: true

require_relative "lib/hello_wayne/version"

Gem::Specification.new do |spec|
  spec.name = "hello_wayne"
  spec.version = HelloWayne::VERSION
  spec.authors = ["MGulas"]
  spec.email = [""]

  spec.summary = "This is a summary"
  spec.description = "This is a test"
  spec.homepage = "https://github.com/MGulas/hello_wayne_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/MGulas/hello_wayne_gem"
  spec.metadata["changelog_uri"] = "https://github.com/MGulas/hello_wayne_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec", "~> 3.2"


  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

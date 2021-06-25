# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "tdlib-schema"
  spec.version       = "1.7.0"
  spec.authors       = ["Southbridge"]
  spec.email         = ["ask@southbridge.io"]

  spec.summary       = "TDLib schema for tdlib-ruby gem"
  spec.description   = "TDLib schema for tdlib-ruby gem"
  spec.homepage      = "https://github.com/southbridgeio/tdlib-schema"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_runtime_dependency 'dry-struct', '~> 1.0'
  spec.add_runtime_dependency 'dry-types', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubygems-tasks', '~> 0.2'
  spec.add_development_dependency 'yard', '~> 0.9'
  spec.add_development_dependency 'pry', '~> 0.11'
  spec.add_development_dependency 'activesupport', '~> 5.2'
end

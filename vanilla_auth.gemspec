# frozen_string_literal: true

require_relative "lib/vanilla_auth/version"

Gem::Specification.new do |spec|
  spec.name = "vanilla_auth"
  spec.version = VanillaAuth::VERSION
  spec.authors = ["Fagner"]
  spec.email = ["fagnerfpr@gmail.com"]

  spec.summary = "vanilla authentication"
  spec.description = "vanilla authentication"
  spec.homepage = "https://github.com/fagnerpereira/vanilla_auth"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "railties"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "nyros_form2/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "nyros_form2"
  spec.version     = NyrosForm2::VERSION
  spec.authors     = ["raju rekadi"]
  spec.email       = ["nraju.nyros@gmail.com"]
  spec.homepage    = "https://github.com/nraju-nyros/nyros_form2"
  spec.summary     = "Write a short summary, because RubyGems requires one."
  spec.description = "Write a longer description or delete this line."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2"

  spec.add_development_dependency "mysql2", '~> 0.5.2'
end

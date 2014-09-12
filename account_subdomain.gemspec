$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "account_subdomain/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "account_subdomain"
  s.version     = AccountSubdomain::VERSION
  s.authors     = ["Sachin Choudhary"]
  s.email       = ["sachin238@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AccountSubdomain."
  s.description = "TODO: Description of AccountSubdomain."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3"
end

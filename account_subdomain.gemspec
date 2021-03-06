$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "account_subdomain/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "account_subdomain"
  s.version     = AccountSubdomain::VERSION
  s.authors     = ["Sachin Choudhary"]
  s.email       = ["sachin238@gmail.com"]
  s.homepage    = "https://github.com/sachin/account_subdomain"
  s.summary     = "Subdomain functionality to rails application."
  s.description = "Account subdomain gem add the functionality of adding and managing the subdomain functionality in rails application."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency 'jquery-rails'
  s.add_development_dependency "sqlite3"
end

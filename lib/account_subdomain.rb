require "account_subdomain/engine"

module AccountSubdomain
  mattr_accessor :reflections
  @@reflections = {}

  mattr_accessor :redirect_path
  @@redirect_path = '/'

  mattr_accessor :tld_length
  @@tld_length = 1
end

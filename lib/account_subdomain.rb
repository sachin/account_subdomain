require "account_subdomain/engine"

module AccountSubdomain
  mattr_accessor :reflections
  @@reflections = {}

  mattr_accessor :redirect_path
  @@redirect_path = '/'
end

require "account_subdomain/engine"

module AccountSubdomain
  mattr_accessor :reflections
  @@reflections = {}

  mattr_accessor :redirect_path
  @@redirect_path = '/'

  mattr_accessor :tld_length
  @@tld_length = 1

  mattr_accessor :action_controller_filters
  @@action_controller_filters = {}

  mattr_accessor :after_creation_path
  @@after_creation_path = 'account_subdomain.accounts_path'

end

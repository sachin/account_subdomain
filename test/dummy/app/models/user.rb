class User < ActiveRecord::Base
  belongs_to :account, :class_name => 'AccountSubdomain::Account'
end

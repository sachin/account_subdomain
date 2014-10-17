module AccountSubdomain
  class Account < ActiveRecord::Base
    validates :subdomain, :presence => true, uniqueness: {message: 'already been taken.'}, :length => {:within => 2..50}
    AccountSubdomain.reflections.each do|reflection|
      self.class_eval "#{reflection}"
    end
  end
end

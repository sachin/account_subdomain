module AccountSubdomain
  class Account < ActiveRecord::Base
    validates :subdomain, :presence => true, uniqueness: {message: 'already been taken.'}
    AccountSubdomain.reflections.each do|reflection|
      self.class_eval "#{reflection}"
    end
  end
end

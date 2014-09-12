module AccountSubdomain
  class Account < ActiveRecord::Base
    validates :subdomain, :presence => true, uniqueness: {message: 'already been taken.'}
    AccountSubdomain.reflections.each_pair do|key, reflection|
      reflection.each do|_rel|
        self.class_eval "#{key} :#{_rel.to_sym}, class_name: '#{_rel.classify.to_sym}'"
      end
    end
  end
end

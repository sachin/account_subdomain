class AccountSubdomain::ApplicationController < ApplicationController
  AccountSubdomain.action_controller_filters.each_pair do|key, reflection|
    reflection.each do|_rel|
      self.class_eval "#{key} :#{_rel.to_sym}"
    end
  end
end

module AccountSubdomain
  class Engine < ::Rails::Engine
    isolate_namespace AccountSubdomain
    initializer  "account_subdomain.load_helpers" do
      ActiveSupport.on_load(:action_controller) do
        include AccountSubdomain::AccountsHelper
        helper AccountSubdomain::Engine.helpers
      end
    end
  end
end

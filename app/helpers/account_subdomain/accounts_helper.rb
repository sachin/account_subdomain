module AccountSubdomain
  module AccountsHelper

    def subdomain
      request.subdomain(AccountSubdomain.tld_length)
    end

    def validate_subdomain
      redirect_to eval("main_app.#{AccountSubdomain.redirect_path}"), :error => 'You are not authorized.' unless current_subdomain.present?
    end

    def current_subdomain
      @subdomain ||= AccountSubdomain::Account.find_by_subdomain(subdomain)
    end

  end
end

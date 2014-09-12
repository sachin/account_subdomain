module AccountSubdomain
  module AccountsHelper

    def subdomain
      request.subdomain
    end

    def validate_subdomain
      redirect_to eval("main_app.#{AccountSubdomain.redirect_path}"), :status => :unauthorized unless current_subdomain.present?
    end

    def subdomain_present?
      subdomain.present?
    end

    def current_subdomain
      @subdomain ||= AccountSubdomain::Account.find_by_subdomain(subdomain)
    end

    def with_subdomain(subdomain)
      subdomain = (subdomain || "")
      subdomain += "." unless subdomain.empty?
      [subdomain, request.domain(2), request.port_string].join
    end
  end
end

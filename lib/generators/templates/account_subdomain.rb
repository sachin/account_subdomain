AccountSubdomain.reflections[:has_many] = ['users']
AccountSubdomain.reflections[:has_one] = []
AccountSubdomain.reflections[:belongs_to] = []
AccountSubdomain.redirect_path = 'account_subdomain_path'
AccountSubdomain.tld_length = 1
AccountSubdomain.action_controller_filters[:before_filter] = []
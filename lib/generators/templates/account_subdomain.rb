#Add the relationships in the Account Subdomain models.
#like if account subdomain has many users
#you can give that AccountSubdomain.reflections << "has_many :users, class_name: 'users', dependent: :destroy"
#You can give an array to each type of relationships.
#
#AccountSubdomain supports every type of relationships which rails supports
AccountSubdomain.reflections << "has_many :users, class_name: 'users', dependent: :destroy"


#This setting is used for redirect for invalid subdomain.
AccountSubdomain.redirect_path = '/'

#This setting is used for redirect after successfully creation of subdomain.
AccountSubdomain.after_creation_path = 'account_subdomain.accounts_path'

#This setting is for domain tld
# tdd for
#example.com => #1
#example.co.in => #2
#set it as per your domain name
AccountSubdomain.tld_length = 1


#Settings for filters
#use case :- You want the https authentication before the access the account subdomain
#AccountSubdomain.action_controller_filters[:before_filter] = [:validate_http_access_only]
#
# Add validate_http_access_only filter in your application.rb
AccountSubdomain.action_controller_filters[:before_filter] = []
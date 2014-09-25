# AccountSubdomain

Adds the subdomain functionality to rails application. Ready for rails 4([RubyGems](http://rubygems.org/gems/account_subdomain))

### Dummy Application

* [spec/dummy_app](https://github.com/sachin/account_subdomain/tree/master/test/dummy)

## Install

**Gemfile** (Rails 4)

```
gem 'account_subdomain'
```

**Console**

```
bundle
```

```
rails generate account_subdomain:install
```

```
rake db:migrate
```
### Extend your Routes for mount ACCOUNT SUBDOMAIN

```
mount AccountSubdomain::Engine => "/account_subdomain"
```

You are done !

## Usage

Account subdomain gem add the functionality of adding and managing the subdomain functionality in rails application.

It gives you some filters and ui helpers
### subdomain
 It return the subdomain from the request object

### validate_subdomain
 It validated the request subdomain. If subdomain not found then return to the redirect url mentioned in account_subdomain.rb under initializers.

### current_subdomain
   Return the valid subdomain else nil.

## Settings
 Setting for account subdomain mentioned in account_subdomain.rb under initializers

## UI Helper

### url_for

  We override the default url_for helper now it supports the subdomain option to generate the url. example:-

       articles_url(:subdomain => 'test') #=> test.example.com/articles

       article_url(article, :subdomain => 'test') #=> test.example.com/articles/1

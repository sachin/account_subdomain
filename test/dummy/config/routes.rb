Rails.application.routes.draw do

  resources :users

  mount AccountSubdomain::Engine => "/account_subdomain"
  root to: 'users#index'
end

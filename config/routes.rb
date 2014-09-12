AccountSubdomain::Engine.routes.draw do
  resources :accounts, :except => [:edit, :update]
  root to: 'accounts#new'
end

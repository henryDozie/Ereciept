Rails.application.routes.draw do
  # [...]
  resources :erequests
  post 'signup', to: 'users#create'
  post 'auth', to: 'authentication#authenticate'
end
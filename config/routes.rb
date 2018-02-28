Rails.application.routes.draw do
  get '', to: 'users#landing'
  get '/signup', to: 'users#new'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root'users#landing'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
  resources :warframes
  resources :mods
  resources :relics
  resources :weapons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'sessions/new'

  root'users#landing'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/users/:id', to: 'users#promote'
  post '/users/demote/:id', to: 'users#demote'
  get '/admin', to: 'admin#new'
  get '/moderator', to: 'moderator#new'
  post '/warframes/new', to: 'warframes#create'
  post '/relics/new', to: 'relics#create'
  post '/mods/new', to: 'mods#create'
  post '/weapons/new', to: 'weapons#create'
  resources :users
  resources :warframes
  resources :mods
  resources :relics
  resources :weapons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

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

  # get '/admin', to: 'admin#new'

  get '/weapons/melee', to: 'weapons#melee'
  get '/weapons/:type/:id', to: 'weapons#show'
  get '/weapons/primary', to: 'weapons#primary'
  get '/weapons/secondary', to: 'weapons#secondary'
  post '/weapons/new', to: 'weapons#create'

  get '/mods/weapon', to: 'mods#weapon'
  get '/mods/:type/:id', to: 'mods#show'
  get '/mods/warframe', to: 'mods#warframe'
  post '/mods/new', to: 'mods#create'

  get '/relics/neo', to: 'relics#neo'
  get '/relics/axi', to: 'relics#axi'
  get '/relics/lith', to: 'relics#lith'
  get '/relics/meso', to: 'relics#meso'
  get '/relics/:type/:id', to: 'relics#show'
  post '/relics/new', to: 'relics#create'

  get '/moderator', to: 'moderator#new'

  post '/warframes/new', to: 'warframes#create'

  resources :users
  resources :warframes
  resources :mods
  resources :relics
  resources :weapons
  resources :account_activations, only: [:edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

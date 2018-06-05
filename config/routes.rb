Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'sitemap', to: 'sitemap#sitemap'
  root'users#landing'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/users/:id', to: 'users#promote'
  post '/users/demote/:id', to: 'users#demote'

  get '/success', to: 'users#upgrade'
  get '/favorites', to: 'favorites#index'
  # get '/admin', to: 'admin#new'

  get '/premium', to: 'users#premium'
  get '/about' , to: 'about#text'
  get '/admin', to: 'admin#new'
  get '/search', to: 'search#search'
  get '/weapons/melee', to: 'weapons#melee'
  get '/weapons/:type/:id', to: 'weapons#show'
  get '/weapons/primary', to: 'weapons#primary'
  get '/weapons/secondary', to: 'weapons#secondary'
  post '/weapons/new', to: 'weapons#create'
  post '/weapons/:type/:id', to: 'weapons#addFavorite'
  post '/weapons/:id', to: 'weapons#edit'
  get '/mods/weapon', to: 'mods#weapon'
  get '/mods/:type/:id', to: 'mods#show'
  get '/mods/warframe', to: 'mods#warframe'
  post '/mods/new', to: 'mods#create'
  post '/mods/:type/:id', to: 'mods#addFavorite'
  post 'mods/:id', to: 'mods#edit'

  get '/relics/neo', to: 'relics#neo'
  get '/relics/axi', to: 'relics#axi'
  get '/relics/lith', to: 'relics#lith'
  get '/relics/meso', to: 'relics#meso'
  get '/relics/:type/:id', to: 'relics#show'
  post '/relics/new', to: 'relics#create'
  post '/relics/:type/:id', to: 'relics#addFavorite'
  post 'relics/:id', to: 'relics#edit'

  get '/moderator', to: 'moderator#new'

  post '/warframes/new', to: 'warframes#create'
  post '/warframes/favorite/:id', to: 'warframes#addFavorite'
  post '/warframes/:id', to: 'warframes#edit'

  resources :users
  resources :warframes
  resources :mods
  resources :relics
  resources :weapons
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

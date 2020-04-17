Rails.application.routes.draw do
  resources :albums
  resources :artists
  resources :tracks
  resources :playlists
  resources :users
  resources :add_songs


 get '/', to: 'playlists#home'
  get '/add_songs', to: 'add_songs#index'
  get '/add_songs/new', to: 'add_songs#new'
  post '/add_songs', to: 'add_songs#create'
  get '/add_songs/:id', to: 'add_songs#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

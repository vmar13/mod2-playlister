Rails.application.routes.draw do
  resources :tracks
  resources :playlists
  resources :users
  resources :albums
  resources :artists
  resources :genres
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

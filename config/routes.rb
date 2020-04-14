Rails.application.routes.draw do
  resources :albums
  resources :artists
  resources :tracks
  resources :playlists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :categories
  resources :photos
  resources :comments, only: %i[destroy new create]
  get "/search", to: "photos#search"
end

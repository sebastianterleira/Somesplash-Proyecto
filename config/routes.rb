Rails.application.routes.draw do
  resources :categories
  resources :photos
  resources :comments, only: %i[destroy new create]
  get "/search-results", to: "photos#search-results"
end

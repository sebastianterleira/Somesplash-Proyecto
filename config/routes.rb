Rails.application.routes.draw do
  get 'photo/new'
  get 'photo/edit'
  get 'photo/show'
  # get 'category/index'
  # get 'category/new'
  # get 'category/edit'
  # get 'category/show'
  # get "/categories", to: "categories#index"
  resources :category
  resources :photo
end

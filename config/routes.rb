Rails.application.routes.draw do
  # get 'category/index'
  # get 'category/new'
  # get 'category/edit'
  # get 'category/show'
  # get "/categories", to: "categories#index"
  resources :category
end

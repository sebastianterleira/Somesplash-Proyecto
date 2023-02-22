Rails.application.routes.draw do
  resources :categories do
    resources :comments, only: %i[index new create destroy]
  end
  resources :photos, only: %i[new create show edit update destroy] do
    resources :comments, only: %i[index new create destroy]
  end
  get "/init_search", to: "photos#init_search"
  get "/search", to: "photos#search"
end

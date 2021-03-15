Rails.application.routes.draw do

  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  get "/me", to: "users#show"

  resources :data_infos
  resources :data_sets
  resources :sort_data_elements, only: [:index, :show, :create, :destroy]
  resources :user_data_connectors, only: [:create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

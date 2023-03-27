Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
namespace :api, defaults: {format: :json} do 
  resources :pokemon, only: [:index, :create, do
    resources :items, only: [:show]
    resources :types, only: [:index]
  end
  resources :items, only: [:index, :edit, :destroy]
resources :items

end
  # Defines the root path route ("/")
  # root "articles#index"
end

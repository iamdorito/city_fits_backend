Rails.application.routes.draw do
  resources :users
  resources :products
  resources :outfit_products
  resources :outfits
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

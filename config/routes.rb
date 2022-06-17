Rails.application.routes.draw do
  resources :organization_units
  resources :organization_types
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :races
  resources :genders
  resources :titles
  resources :users
  ActiveAdmin.routes(self)
  root "dashboard#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  resources :post_levels
  namespace :api do
    namespace :v1 do
      resources :organizations
      resources :users
      scope :users, module: :users do
        post '/', to: "registrations#create", as: :user_registration
      end
      resources :posts
      resources :post_levels
    end
  end
  resources :submissions
  resources :organizations
  resources :appointment_statuses
  resources :appointments
  resources :post_titles
  resources :posts
  resources :organization_units
  resources :documents
  resources :posts do
        member do
          post :edit
        end
      end
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

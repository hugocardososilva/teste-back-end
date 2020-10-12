Rails.application.routes.draw do

  resources :contact_forms
  resources :contacts
  resources :trackers, only: :index
  resources :home do
    collection do
      get :about
    end
  end

  devise_for :users

  authenticated do
    root to: "dashboard#index", as: :authenticated_root
  end

  root to: "home#index"

  namespace :api do
    namespace :v1 do
      resources :trackers, only: :create, defaults: {format: :json}
      resources :contacts, defaults: {format: :json}
    end
  end
end

Rails.application.routes.draw do

  devise_for :users

  authenticated do
    root to: "dashboard#index", as: :authenticated_root
  end

  root to: "home#index"

  namespace :api do
    namespace :v1 do
      resources :trackers, only: :create, defaults: {format: :json}
    end
  end
end

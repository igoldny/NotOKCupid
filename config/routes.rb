Rails.application.routes.draw do

  root to: "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show, :update]
    resources :likes, only: [:index, :create, :destroy]
    resources :conversations, only: [:create, :show, :index] do
      resources :messages, only: [:create, :show]
    end
    resource :session, only: [:create, :destroy]
  end
end

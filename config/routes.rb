Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update, :create]
      resources :stock_cards, only: [:index, :update, :create]
      resources :companies, only: [:index, :update, :create]
    end
  end
end

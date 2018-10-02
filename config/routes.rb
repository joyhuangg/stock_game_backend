Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :companies, only: [:index, :update, :create, :show]
      resources :users, only: [:index, :update, :create, :show]
      resources :stock_cards, only: [:index, :update, :create, :show]
    end
  end
end

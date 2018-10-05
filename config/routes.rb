Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :companies
      resources :users, only: [:index, :update, :create, :show, :destroy]
      resources :stock_cards, only: [:index, :update, :create, :show,:destroy]
      get "/refresh_companies", to: "companies#refresh_companies"
      resources :news, only: [:create]
    end
  end
end

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :ingredients
      resources :users
      namespace :users do
        resources :lists
      end
      get "/lists", to: "lists#index"
    end
  end

end

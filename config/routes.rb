Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      namespace :users do
        get ':id/lists', to: 'lists#index'
      end
      resources :ingredients
      get "/lists", to: "lists#index"
    end
  end

end

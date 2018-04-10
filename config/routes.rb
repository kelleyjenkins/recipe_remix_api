Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :ingredients
      get "/lists", to: "lists#index"
    end
  end

end

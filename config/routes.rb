Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      namespace :users do
        get ':id/lists', to: 'lists#index'
        get ':id/recipes', to: 'recipes#index'
      end
      resources :ingredients
      resources :lists
      resources :users
      resources :list_ingredients
      resources :recipes
    end
  end

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:creaet, :show, :destroy] do
    resources :workouts do
      resources :weights
      resources :cardios

    collection do
      post '/login', to 'users#login'
    end


  end

  
end

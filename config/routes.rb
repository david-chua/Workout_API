Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show] do
    collection do
      post '/login', to: 'users#login'
    end
  end

  resources :workouts do
    resources :weights
    resources :cardios
  end
end


# Prefix Verb   URI Pattern                                         Controller#Action
# login_users
#        POST   /users/login(.:format)                                    users#login
#  users
#        POST   /users(.:format)                                          users#create
#   user
#        GET    /users/:id(.:format)                                      users#show
# workout_weights
#        GET    /workouts/:workout_id/weights(.:format)                   weights#index
#        POST   /workouts/:workout_id/weights(.:format)                   weights#create
# workout_weight
#        GET    /workouts/:workout_id/weights/:id(.:format)               weights#show
#        PATCH  /workouts/:workout_id/weights/:id(.:format)               weights#update
#        PUT    /workouts/:workout_id/weights/:id(.:format)               weights#update
#        DELETE /workouts/:workout_id/weights/:id(.:format)               weights#destroy
# workout_cardios
#        GET    /workouts/:workout_id/cardios(.:format)                   cardios#index
#        POST   /workouts/:workout_id/cardios(.:format)                   cardios#create
# workout_cardio
#        GET    /workouts/:workout_id/cardios/:id(.:format)               cardios#show
#        PATCH  /workouts/:workout_id/cardios/:id(.:format)               cardios#update
#        PUT    /workouts/:workout_id/cardios/:id(.:format)               cardios#update
#        DELETE /workouts/:workout_id/cardios/:id(.:format)               cardios#destroy
# workouts
#        GET    /workouts(.:format)                                       workouts#index
#        POST   /workouts(.:format)                                       workouts#create
# workout
#        GET    /workouts/:id(.:format)                                   workouts#show
#        PATCH  /workouts/:id(.:format)                                   workouts#update
#        PUT    /workouts/:id(.:format)                                   workouts#update
#        DELETE /workouts/:id(.:format)                                   workouts#destroy

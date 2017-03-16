Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show] do
    resources :workouts do
      resources :weights
      resources :cardios
    end
    collection do
      post '/login', to: 'users#login'
    end
end
end

#
# Prefix Verb   URI Pattern                                                Controller#Action
# user_workout_weights
# GET    /users/:user_id/workouts/:workout_id/weights(.:format)     weights#index
# POST   /users/:user_id/workouts/:workout_id/weights(.:format)     weights#create
# user_workout_weight
# GET    /users/:user_id/workouts/:workout_id/weights/:id(.:format) weights#show
# PATCH  /users/:user_id/workouts/:workout_id/weights/:id(.:format) weights#update
# PUT    /users/:user_id/workouts/:workout_id/weights/:id(.:format) weights#update
# DELETE /users/:user_id/workouts/:workout_id/weights/:id(.:format) weights#destroy
# user_workout_cardios
# GET    /users/:user_id/workouts/:workout_id/cardios(.:format)     cardios#index
# POST   /users/:user_id/workouts/:workout_id/cardios(.:format)     cardios#create
# user_workout_cardio
# GET    /users/:user_id/workouts/:workout_id/cardios/:id(.:format) cardios#show
# PATCH  /users/:user_id/workouts/:workout_id/cardios/:id(.:format) cardios#update
# PUT    /users/:user_id/workouts/:workout_id/cardios/:id(.:format) cardios#update
# DELETE /users/:user_id/workouts/:workout_id/cardios/:id(.:format) cardios#destroy
#     user_workouts
# GET    /users/:user_id/workouts(.:format)                         workouts#index
# POST   /users/:user_id/workouts(.:format)                         workouts#create
#      user_workout
# GET    /users/:user_id/workouts/:id(.:format)                     workouts#show
# PATCH  /users/:user_id/workouts/:id(.:format)                     workouts#update
# PUT    /users/:user_id/workouts/:id(.:format)                     workouts#update
# DELETE /users/:user_id/workouts/:id(.:format)                     workouts#destroy
#       login_users
# POST   /users/login(.:format)                                     users#login
#             users
# POST   /users(.:format)                                           users#create
#              user
# GET    /users/:id(.:format)                                       users#show

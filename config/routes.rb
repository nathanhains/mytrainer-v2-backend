Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  namespace :api do
    namespace :v1 do
      resources :users
      resources :workouts
      resources :exercises
      resources :set_groups  
      resources :workout_exercises
      resources :friends
      resources :categories
    end
  end
end

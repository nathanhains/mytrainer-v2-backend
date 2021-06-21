Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :workouts
      resources :exercises
      resources :set_groups
    end
  end
end

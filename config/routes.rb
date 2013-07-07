Wodlandia::Application.routes.draw do
  resources :posts

  resources :wods

  resources :workouts do
    resources :wods
  end
end

Wodlandia::Application.routes.draw do
  resources :users do
    resources :posts
  end

  resources :posts

  resources :wods

  resources :workouts do
    resources :wods
  end
end

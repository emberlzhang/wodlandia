Wodlandia::Application.routes.draw do
  resources :users do
    resources :posts
  end

  resources :posts

  resources :wods

  resources :wods do
    resources :posts
  end  

  resources :workouts do
    resources :wods
  end

  get 'humanapi/callback', to: 'humanapi#index'
  resources :humanapi

  root to: 'application#index'
end

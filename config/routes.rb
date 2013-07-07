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

  root to: 'application#index'
end

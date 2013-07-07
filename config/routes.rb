Wodlandia::Application.routes.draw do
  get 'photos/:id', to: 'photos#show'
  post 'users/', to: 'clearance/users#create' 
  
  post '/users/:user_id/password', to: 'clearance/passwords#create'

  resources :users do
    resources :posts
  end

  resources :workouts do
    resources :wods
  end

  resources :wods do
    resources :posts
  end  

  resources :wods

  resources :posts

  get 'humanapi/callback', to: 'humanapi#index'
  resources :humanapi


  root to: 'application#index'
end

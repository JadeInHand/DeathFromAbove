Rails.application.routes.draw do
  root :to => 'pages#index'
  resources :pages
  resources :users
  resources :sessions
  resources :highscores
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
end

Rails.application.routes.draw do
  #get 'sessions/new'

  root to: 'topics#index'
  resources :topics

  get '/auth/:provider/callback' => 'sessions#new'
end

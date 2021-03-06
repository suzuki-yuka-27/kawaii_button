Rails.application.routes.draw do
  root 'kawaii_buttons#update'
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resource :mypage, only: %i[show edit update]
end

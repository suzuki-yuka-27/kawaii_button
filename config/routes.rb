Rails.application.routes.draw do
  root 'buttons#update'

  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_seeeions#destroy'

  resources :users, only: %i[new create] do
    resource :mypage
  end
  resources :user_seeeions, only: %i[new create destroy]
end

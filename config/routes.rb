Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users,
    path: '',
    path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up:'registration'},
    controllers: {omniauth_callbacks: 'omniauth_callbacks'}

  # get '/users/:id', to: 'users#show'
  # /users/3 -> Users controller, show action, params {id: '3'}
  resources :users, only: [:show]
end

Rails.application.routes.draw do
  resources :users
  post '/auth/login', to: 'authentication#login'
  resources :todos
  put '/mission_completed/:id', to: 'todos#completed'
end

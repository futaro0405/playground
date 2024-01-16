Rails.application.routes.draw do
  resources :tasks
  toot to: 'tasks#index'
end

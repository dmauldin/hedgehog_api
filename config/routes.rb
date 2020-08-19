Rails.application.routes.draw do
  resources :tickets
  resources :priorities
  resources :statuses
  resources :projects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

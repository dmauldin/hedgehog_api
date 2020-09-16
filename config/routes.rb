Rails.application.routes.draw do
  resources :tickets
  resources :priorities
  resources :statuses
  resources :projects do
    resources :tickets
  end
  resources :users
end

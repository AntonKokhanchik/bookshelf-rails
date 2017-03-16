Rails.application.routes.draw do

  resources :authors
  resources :books
  root to: 'home#index'
  
end

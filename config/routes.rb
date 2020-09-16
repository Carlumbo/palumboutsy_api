Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  root to: "static#home"
  namespace :api do 
    namespace :v1 do
      resources :products
    end 
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :coordinators
  root 'home#index'
  resources :events, except: [:index]
  get '/dashboard', to: 'events#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

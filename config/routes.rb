Rails.application.routes.draw do

  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  
  root 'welcome#index'

  devise_for :users
  resources :posts do
    resources :comments do
      patch :accept, on: :member
    end
  end
      
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

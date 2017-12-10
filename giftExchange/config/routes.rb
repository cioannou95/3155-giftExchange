Rails.application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure',  to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  
  
  resources :sessions, only: [:create, :destroy]
  get 'welcome/index'
  resources :rooms do
    resources :matches
  end
  
  
  #resources :rooms #do
  #resources :comments
  
  #root 'rooms#login'
  #end

  #resources :users
  
  root 'welcome#index'
  
  
#>>>>>>> 227bd19c1542a34d2eb81469a10cbafa9e57f846

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

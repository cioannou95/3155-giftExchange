Rails.application.routes.draw do
  #get 'rooms/login'

  get 'new/index'
  
  
  resources :rooms 
  
  root 'rooms#login'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

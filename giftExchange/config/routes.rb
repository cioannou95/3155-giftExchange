Rails.application.routes.draw do
  get 'rooms/login'

  get 'new/index'
  
  
  resources :rooms 
  
  #root 'rooms#login'
  

  resources :users
  
  root 'welcome#index'
  
  
#>>>>>>> 227bd19c1542a34d2eb81469a10cbafa9e57f846

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'rooms/login'

  get 'welcome/index'
  
  root 'welcome#index'
  
  resources :welcome

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

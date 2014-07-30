Rails.application.routes.draw do
  
  #get 'user/show'

  devise_for :users
  root to: 'pages#home'
  resources :tasks, except: [:index]
  resource :user, only: :show
 
end

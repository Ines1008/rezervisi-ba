Rails.application.routes.draw do
  

  devise_for :users
  
    devise_scope :user do  
      get '/users/sign_out' => 'devise/sessions#destroy'     
   end

   
root 'pages#index', as: 'index'

get '/restorani' => 'pages#restorani'


end

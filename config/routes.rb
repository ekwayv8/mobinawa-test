Rails.application.routes.draw do
  devise_for :admins
  root to: 'sectors#index'

  resources :admins do
    resources :companies
    resources :products
  end

  resources :countries 
  resources :sectors 
  resources :sub_sectors 
  resources :companies
  resources :products
  	  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

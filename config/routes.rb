Rails.application.routes.draw do
  devise_for :admins
  root to: 'homes#index'

  resources :admins do
  	resources :compagnies do
  		resources :products
  	end
  end

  resources :sectors do
  	resources :sub_sectors do
  	  resources :compagnies do
  	 	resources :products
  	  end
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

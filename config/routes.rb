Rails.application.routes.draw do

  	root 'home#index'

  	# resources :posts
  	devise_for :users

  	authenticate :user do
  		resources :posts, only: [:new, :create, :edit, :update, :destroy]
	end
	resources :posts, only: [:index, :show]

  	# root to: "home#index"
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  use_doorkeeper
	root to: 'pages#index'
	resources :users, only: [:new, :create]
	resources :sessions, only: [:new, :create]
	delete '/logout', to: 'sessions#destroy', as: :logout
	namespace :api do
		get 'user', to: 'users#show'
		get 'user/update', to: 'users#update'
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

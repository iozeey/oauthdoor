Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get '/user', to: 'users#show', as: :user
	get '/user/update', to: 'users#update', as: :update_user
	get '/oauth/callback', to: 'sessions#create'
	root 'dashboard#index'
	namespace :api do
		resources :events, only: [:index, :create, :update, :destroy] do
	  		get :search, on: :collection
		end
	end

end

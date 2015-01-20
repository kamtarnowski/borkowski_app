Rails.application.routes.draw do

  root 'static_pages#home'
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :contacts, only: [:new, :create]
  resources :opinions
  resources :company_data, only: [:edit, :update]
  resources :business_methods, only: [:new, :create, :update, :destroy, :show]
  resources :home_pages, only: [:edit, :update]
  delete 'users/:id'  => 'users#destroy', :as => :admin_destroy_user
  get '/users'        => 'users#index'
  get '/contact'      => 'contacts#new'
  get '/realizacje'   => 'static_pages#realizacje'

end

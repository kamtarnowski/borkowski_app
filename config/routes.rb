Rails.application.routes.draw do


  root 'static_pages#home'
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :contacts, only: [:new, :create]
  resources :opinions
  resources :company_data, only: [:edit, :update]
  resources :business_methods, only: [:new, :create, :update, :destroy, :show]
  resources :home_pages, only: [:edit, :update]
  resources :galleries, only: [:edit, :update, :show]
  resources :gallery_contents, only: [:create, :destroy]
  delete 'gallery_contents/:id' => 'gallery_contents#destroy', as: :delete_gallery
  delete 'users/:id'  => 'users#destroy', as: :admin_destroy_user
  get '/users'        => 'users#index'
  get '/contact'      => 'contacts#new'
  post '/'            => 'static_pages#event_cookies', as: :cookies_deploy

end

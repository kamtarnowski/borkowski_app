Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'sessions' }
  resources :contacts, only: [:new, :create]
  resources :opinions
  resources :business_methods, only: [:new, :create, :update, :destroy, :show]
  resources :home_pages, only: [:edit, :update]
  root 'static_pages#home'
  delete 'users/:id'  => 'users#destroy', :as => :admin_destroy_user
  get '/users'        => 'users#index'
  get '/contact'      => 'contacts#new'
  get '/realizacje'   => 'static_pages#realizacje'
  get '/metoda_1'     => 'static_pages#metoda_1'
  get '/metoda_2'     => 'static_pages#metoda_2'
  get '/metoda_3'     => 'static_pages#metoda_3'

end

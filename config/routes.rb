Rails.application.routes.draw do
 
  post 'user_token' => 'user_token#create'
  #Session Form
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # delete '/login' => 'sessions#destroy'

  #Get the login token from Knock
  post 'user_token' => 'user_token#create'

  #User routes
  get '/users/current' => 'users#current'

  root :to => "pages#home"
  resources :users
  get '/products/:id/delete' => 'products#destroy', as: 'destroy_product'
  resources :products
  resources :categories
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cart
end

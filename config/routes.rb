Rails.application.routes.draw do
 
  #Session Form
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'


  root :to => "pages#home"
  resources :users
  get '/products/:id/delete' => 'products#destroy', as: 'destroy_product'
  resources :products
  resources :categories
end

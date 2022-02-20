Rails.application.routes.draw do
 
  root :to => "pages#home"
  resources :users
  get '/products/:id/delete' => 'products#destroy', as: 'destroy_product'
  resources :products
  resources :categories
  resources :cart
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

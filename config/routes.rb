Rails.application.routes.draw do
  get '/cars' => 'cars#index'
  get '/cars/new' => 'cars#new'
  post '/cars' => 'cars#create'
  get '/cars/:id' => 'cars#show'
  get '/cars/:id/edit' => 'cars#edit'
  patch '/cars/:id' => 'cars#update'
  delete '/cars/:id' => 'cars#destroy'
  # images
  get '/cars/:product_id/images/new' => 'images#new'
  post '/cars/:product_id/images' => 'images#create'
  # singup
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  # session/login
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # cart
  get '/carts' => 'carted_products#index'
  post '/carts' => 'carted_products#create'
  delete '/carts/:id' => 'carted_products#destroy'
  # orders
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

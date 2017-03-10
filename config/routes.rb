Rails.application.routes.draw do
  get '/cars' => 'cars#index'
  get '/cars/:id' => 'cars#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

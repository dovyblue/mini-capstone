Rails.application.routes.draw do
  get '/dovycars' => 'cars#dcars'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/orders' => 'orders#new'
  post '/orders' => 'orders#create'
  get '/checkout/:id' => 'orders#show'

  get '/carted_products' => 'carted_products#index'
  get '/carted_products/new' => 'carted_products#new'
  post '/carted_products' => 'carted_products#create'
  get '/carted_products/:id' => 'carted_products#show'
  get '/carted_products/:id/edit' => 'carted_products#edit'
  patch '/carted_products/:id' => 'carted_products#update'
  delete '/carted_products/:id' => 'carted_products#destroy'


end

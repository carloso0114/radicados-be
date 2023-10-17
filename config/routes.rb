Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :radicados, param: :idDirector

  get '/radicados', to: 'radicados#index'
  get '/radicados/:idDirector', to: 'radicados#show'
  post '/radicados', to: 'radicados#create'
  patch '/radicados/:idDirector/patch', to: 'radicados#update'
  delete '/radicados/:idDirector', to: 'radicados#detroy'
end

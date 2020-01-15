Rails.application.routes.draw do


  root to: 'welcome#index'

  get 'session/new'
  get '/login' => 'session#new' # login form
  post '/login' => 'session#create' # form submit, check credentials, create session
  delete '/login' => 'session#destroy' # logout (delete session)

    resources :users

    resources :plans

end

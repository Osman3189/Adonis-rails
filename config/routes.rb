Rails.application.routes.draw do


  get 'noticeboards/edit'
  get 'noticeboards/index'
  get 'noticeboards/new'
  get 'noticeboards/show'
  get 'pages/map'
  root to: 'welcome#index'

  get 'session/new'
  get '/login' => 'session#new' # login form
  post '/login' => 'session#create' # form submit, check credentials, create session
  delete '/login' => 'session#destroy' # logout (delete session)

    resources :users

    resources :plans

end

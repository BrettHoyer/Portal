Portal::Application.routes.draw do
  
  resources :rants


  get '/home' => 'pages#index', :as => 'home'

end

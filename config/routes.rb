Portal::Application.routes.draw do
  
  get '/home' => 'pages#index', :as => 'home'

end

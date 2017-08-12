Rails.application.routes.draw do
   
   
  resources :new_tweets
	root "pages#how_it_works" 
  get 'pages/about_us' 
  get 'pages/blog' 
  get 'pages/browse_foods'
	resources :pages 
  devise_for :users
  resources :blogs do
  	resources :comments
  end
   
end

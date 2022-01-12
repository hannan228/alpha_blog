Rails.application.routes.draw do
  # Define your application routes pern the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  # resources :articles, only: [:show, :index, :new, :create, :update, :edit]
  resources :articles 
  root "articles#index"
  

end

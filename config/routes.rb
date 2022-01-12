Rails.application.routes.draw do
  # Define your application routes pern the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :articles, only: [:show, :index, :new, :create, :update, :edit]
  resources :articles 
  root "pages#home"

end

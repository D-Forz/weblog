Rails.application.routes.draw do
  # Verb 'path', to: 'controller#action'

  # root
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'posts' => 'posts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  # Verb 'path', to: 'controller#action'

  # root
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :posts do
    resources :reviews, only: %i[new create]

    collection do
      get :top
    end

    member do
      get :author
    end
  end
  # only - except
  # read
  # get 'posts', to: 'posts#index', as: :posts
  # get 'posts/:id', to: 'posts#show', as: :post
  # # create
  # get 'posts/new', to: 'posts#new', as: :new_post
  # post 'posts', to: 'posts#create'
  # # update
  # get 'posts/:id/edit', to: 'posts#edit'
  # patch 'posts/:id', to: 'posts#update'
  # # delete
  # delete 'posts/:id', to: 'posts#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

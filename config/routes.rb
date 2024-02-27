Rails.application.routes.draw do
  devise_for :users

  resources :blog_posts

  root to: 'blog_posts#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # get 'blog_posts', to: 'blog_posts#index'
  # get 'blog_posts/new', to: 'blog_posts#new', as: 'new_blog_post'


  # post 'blog_posts', to: 'blog_posts#create'
  # patch 'blog_posts/:id', to: 'blog_posts#update'

  # get 'blog_posts/:id/edit', to: 'blog_posts#edit', as: 'edit_blog_post'


  # get 'blog_posts/:id', to: 'blog_posts#show', as: 'blog_post'

  # delete 'blog_posts/:id', to: 'blog_posts#destroy'

  # Route for listing all blog posts

  # Route for creating a new blog post

  # Route for displaying the form to create a new blog post

  # Route for displaying the form to edit an existing blog post

  # Route for showing a specific blog post


end

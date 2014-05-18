Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'articles#index'

  resources :articles, only: [:index]
  get '/articles/recent' => redirect('/articles')


  resources :blogs, only: [:index] do 
    resources :articles, only: [:index]
  end
  
  resources :categories, only: [:index] do
    resources :articles, only: [:index]
    resources :blogs, only: [:index]
  end
end

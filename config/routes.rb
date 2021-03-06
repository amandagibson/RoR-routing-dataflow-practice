Rails.application.routes.draw do

  namespace :admin do
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  resources :posts

  get 'posts/*missing', to: 'posts#missing'
  get 'query/:something/:another_one', to: 'pages#somethingelse'

  root to: 'pages#home'
end

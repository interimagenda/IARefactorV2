Rails.application.routes.draw do

  devise_for :users

  resources :jobs
  resources :freelancers, only: [:index, :show]
  resources :employers, only: [:index, :show]

  resources :users do
    post 'follow',   to: 'socializations#follow'
    post 'unfollow', to: 'socializations#unfollow'
  end

  resources :jobs do
    post 'like',   to: 'socializations#like'
    post 'unlike', to: 'socializations#unlike'
  end

  get 'contact' => 'pages#contact', as: 'contact'
  get 'about' => 'pages#about', as: 'about'
  get 'blogs' => 'pages#blogs', as: 'blogs'
  get 'landing' => 'pages#landing', as: 'landing'
  get 'guide' => 'pages#how_it_works', as: 'guide'
  get 'terms_and_conditions' => 'pages#terms_and_conditions', as: 'terms_and_conditions'
  get 'faq' => 'pages#faq', as: 'faq'

  root 'pages#landing'

end

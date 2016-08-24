Rails.application.routes.draw do

  devise_for :users

  resources :jobs
  resources :freelancers, only: [:index, :show]
  resources :employers, only: [:index, :show]
  resources :conversations, only: [:index, :show, :destroy]
  resources :messages, only: [:new, :create]

  resources :users do
    post 'follow',   to: 'socializations#follow'
    post 'unfollow', to: 'socializations#unfollow'
  end

  resources :jobs do
    post 'like',   to: 'socializations#like'
    post 'unlike', to: 'socializations#unlike'
  end

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end

  get 'contact' => 'pages#contact', as: 'contact'
  get 'about' => 'pages#about', as: 'about'
  get 'blogs' => 'pages#blogs', as: 'blogs'
  get 'landing' => 'pages#landing', as: 'landing'
  get 'guide' => 'pages#guide', as: 'guide'
  get 'terms_and_conditions' => 'pages#terms_and_conditions', as: 'terms_and_conditions'
  get 'faq' => 'pages#faq', as: 'faq'
  get 'job_openings' => 'pages#job_openings', as: 'job_openings'

  root 'pages#landing'

end

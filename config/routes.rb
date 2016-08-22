Rails.application.routes.draw do

  devise_for :users

  resources :jobs

  get 'contact' => 'pages#contact', as: 'contact'
  get 'about' => 'pages#about', as: 'about'
  get 'blogs' => 'pages#blogs', as: 'blogs'
  get 'landing' => 'pages#landing', as: 'landing'
  get 'guide' => 'pages#how_it_works', as: 'guide'
  get 'terms_and_conditions' => 'pages#terms_and_conditions', as: 'terms_and_conditions'
  get 'faq' => 'pages#faq', as: 'faq'

  root 'pages#landing'

end

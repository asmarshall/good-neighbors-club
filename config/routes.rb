Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  get 'post/:id/edit', to: 'post#edit', as: :edit_post
  patch 'post/:id', to: 'post#update'
  post 'post/store'

  post 'contact/create'

  get 'restaurants', to: 'pages#restaurants'
  get 'bars-and-breweries', to: 'pages#bars_breweries'
  get 'coffee-and-tea', to: 'pages#coffee_tea_shops'
  get 'farms-and-flowers', to: 'pages#farms_flowers'
  get 'boutiques', to: 'pages#boutiques'
  get 'fitness', to: 'pages#fitness'
  get 'general-ways-to-help', to: 'pages#general_ways_to_help'
  get 'resources-and-mental-health', to: 'pages#resources_mental_health'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'submit', to: 'pages#submit'

  root 'pages#index'
end

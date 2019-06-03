# frozen_string_literal: true

Rails.application.routes.draw do
  root 'lists#index'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]

  resources :lists, only: %i[index show create destroy] do
    resources :items, only: %i[create update destroy]
  end
end

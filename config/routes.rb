# frozen_string_literal: true

Rails.application.routes.draw do
  get 'items/create'
  root 'lists#index'

  resources :lists, only: %i[index show create destroy] do
    resources :items, only: %i[create update destroy]
  end
end

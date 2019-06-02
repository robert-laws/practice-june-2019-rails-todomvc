# frozen_string_literal: true

Rails.application.routes.draw do
  get 'items/create'
  root 'lists#index'

  resources :lists, only: [:index, :show, :create] do
    resources :items, only: [:create, :update]
  end
end

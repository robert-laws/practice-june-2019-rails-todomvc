# frozen_string_literal: true

Rails.application.routes.draw do
  root 'lists#index'

  resources :lists, only: %i[index show]
end

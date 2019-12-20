# frozen_string_literal: true

Rails.application.routes.draw do
  resources :news
  get 'subscribeWeeklyNews', to: 'news#subscribeWeeklyNews'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    #omniauth_callbacks: 'omni_auth'
  }
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    get 'forgot_password', to: 'users/passwords#new'
    get 'reset_password', to: 'users/passwords#edit'
    get 'users/update_user', to: 'users/registrations#edit', as: "update_user_path"
    get 'users/update_user/:id', to: 'users/registrations#update'

  end

  root to: 'application#home'
end

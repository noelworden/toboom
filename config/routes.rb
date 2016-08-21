Rails.application.routes.draw do

  devise_for :users, controllers: {sessions: 'users/sessions'}

  resources :users, only: [:show] do
    resources :items, only: [:create, :update, :destroy]
  end

  authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end

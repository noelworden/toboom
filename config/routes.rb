Rails.application.routes.draw do
  get 'items/create'

  #get 'users/show'

  devise_for :users, controllers: {sessions: 'users/sessions'}

  resources :users, only: [:show] do
    resources :items, only: [:create]
  end

  get 'welcome/index'

  get 'welcome/about'

  authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end
  root 'welcome#index'
end

Rails.application.routes.draw do
  get 'users/show'

  devise_for :users, controllers: {sessions: 'users/sessions'}
  get 'welcome/index'

  get 'welcome/about'

  authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end
  root 'welcome#index'
end

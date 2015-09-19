Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users, only: [:index, :show] do
    member do
      get :meet
      get :agree
    end
    collection do
      get :search
    end
  end
  resources :courses
  root 'welcome#index'

  get 'group', to: 'group#show'
  get 'group/edit', to: 'group#edit'
  put 'group', to: 'group#update'
  # resources :group, only: [:update]
end

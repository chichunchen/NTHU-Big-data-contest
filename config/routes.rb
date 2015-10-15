Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { :registrations => "registrations" }
# 	if Rails.env.production?
#     devise_for :users, :controllers => { :registrations => "registrations" }
#   else
#     devise_for :users
#   end

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

  resources :group, except: [:new, :create]
end

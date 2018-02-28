Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  root 'welcome#index'

  namespace :admin do
    resources :trains do
      resources :railway_carriages, shallow: true
    end

    resources :railway_stations do
      patch :update_position, on: :member
    end

    resources :routes
  end
  resources :tickets
  resource :search, only: [:new, :show, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

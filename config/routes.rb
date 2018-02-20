Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  resource :search, only: [:new, :show, :edit]

  resources :trains do
    resources :railway_carriages, shallow: true
  end


  resources :railway_stations do
    patch :update_position, on: :member
  end

  resources :routes
  resources :tickets
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :trains
  resources :railway_stations
  resources :routes
  resources :tickets
  resources :railway_carriages
  resources :economy_carriages, controller: 'railway_carriages', type: 'Economy'
  resources :coupe_carriages, controller: 'railway_carriages', type: 'Coupe'
  resources :sedentary_carriages, controller: 'railway_carriages', type: 'Sedentary'
  resources :sw_carriages, controller: 'railway_carriages', type: 'Sw'
  resources :users
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

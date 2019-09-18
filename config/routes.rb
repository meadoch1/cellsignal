Rails.application.routes.draw do
  resources :location_reports
  resources :speed_reports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end

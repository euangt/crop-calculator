Rails.application.routes.draw do
  get 'chemicals/index'
  root :to => "crops#index"
  resources :fields, only: [:index, :show ]
  resources :crops, only: [ :index ]
end

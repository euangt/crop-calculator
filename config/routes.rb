Rails.application.routes.draw do
  get 'chemicals/index'
  root :to => "crops#index"
    resources :fields, only: [:index, :show, :edit, :update]
  resources :crops, only: [ :index ]
end

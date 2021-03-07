Rails.application.routes.draw do
  get 'chemicals/index'
  root :to => "chemicals#index"
    resources :fields, only: [:index, :show, :edit, :update]
  resources :chemicals, only: [ :index ]
end

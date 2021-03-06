Rails.application.routes.draw do
  root :to => "fields#index"
    resources :fields, only: [:index, :show, :edit, :update]
end

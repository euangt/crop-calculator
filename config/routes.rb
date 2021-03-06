Rails.application.routes.draw do
  root :to => "fields#index"
  resources :farms do
    resources :fields, only: [:index, :edit, :update]
  end
end

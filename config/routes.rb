Rails.application.routes.draw do
  resources :students, only: [:new, :create, :show, :edit, :index, :update]
  resources :school_classes, only: [:new, :create, :show, :edit, :index, :update]
  patch 'student/:id', to: 'students#update'
end

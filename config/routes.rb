Rails.application.routes.draw do
  resources :dogs, only: [:new, :create, :edit, :update, :index, :show, :destroy]
end

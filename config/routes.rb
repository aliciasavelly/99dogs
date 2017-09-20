Rails.application.routes.draw do
  resources :cats, only: [:new, :create, :edit, :update, :index, :show, :destroy]
end

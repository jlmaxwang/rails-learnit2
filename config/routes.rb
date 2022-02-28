Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lessons, only:[:index, :show, :new, :create, :destroy, :edit, :update] do
  resources :sessions, only:[:index, :show, :destroy, :update, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

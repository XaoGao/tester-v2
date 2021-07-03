Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :positions, except: [:show] do
    put :toggle, on: :member
  end
end

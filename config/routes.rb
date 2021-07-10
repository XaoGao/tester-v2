Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :positions, except: [:show] do
    put :toggle, on: :member
  end
  resources :departments, except: [:show] do
    put :toggle, on: :member
  end
  resources :phones, except: [:show] do
    put :toggle, on: :member
  end
  resources :phonebooks, only: [:index]
  resources :patients, except: [:show, :destroy] do
    put :toggle, on: :member
  end
  get 'my_patients', to: 'patients#my_patients'
  get 'my_patients/:id/tests', to: 'tests#index', as: 'go_to_tests'
end

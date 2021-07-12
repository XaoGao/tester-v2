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
  get 'my_patients/:patient_id/tests', to: 'testings#go_to_test', as: 'go_to_tests'
  get 'my_patients/:patient_id/tests/:test_id/new', to: 'testings#new', as: 'new_testings'
  post 'my_patients/:patient_id/tests', to: 'testings#create', as: 'testings'
end

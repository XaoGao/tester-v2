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
  get 'my_patients/:patient_id/testing', to: 'testings#go_to_test', as: 'go_to_testings'
  get 'my_patients/:patient_id/testing/history', to: 'testings#history', as: 'history_testings'
  get 'my_patients/:patient_id/testing/:test_id/new', to: 'testings#new', as: 'new_testings'
  post 'my_patients/:patient_id/testing', to: 'testings#create', as: 'testings'

  get 'my_patients/:patient_id/medical_records', to: 'medical_records#index', as: 'medical_records'
  get 'my_patients/:patient_id/medical_records/new', to: 'medical_records#new', as: 'new_medical_records'
  post 'my_patients/:patient_id/medical_records', to: 'medical_records#create', as: 'medical_record'

  resources :vacations, except: [:show]
end

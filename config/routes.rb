Rails.application.routes.draw do

  get 'roles/new'

  get 'roles/create'

  get 'firm/create'

  get 'firm/add'

  #users
    get 'register' => 'users#new', as: :new_user
    post 'users' => 'users#create', as: :create_user
    get 'users' => 'users#index', as: :users
    get 'users/:id' => 'users#profile', as: :user
    get 'users/update' =>'users#update', as: :update_user
    patch 'users' => 'users#update'
    put 'users' => 'users#update'

  #Sessions
    get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out


    root 'dashboard#hello'
end

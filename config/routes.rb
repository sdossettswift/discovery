Rails.application.routes.draw do

  get 'dashboard/hello'

  #users
    get 'register' => 'users#new', as: :new_user
    post 'users' => 'users#create', as: :create_user
    get 'users' => 'users#index', as: :users
    get 'users/:id' => 'users#profile', as: :user
    get 'users/update' =>'users#update', as: :update_user
    patch 'users' => 'users#update'
    put 'users' => 'users#update'

    root 'dashboard#hello'
end

Rails.application.routes.draw do



  get 'roles/new'

  get 'roles/create'

  get 'firm/create'

  get 'firm/add'

  #users
    get 'register' => 'users#new', as: :new_user
    post 'users' => 'users#create', as: :create_user
    get 'users' => 'users#index', as: :users
    get 'users/:id' => 'users#show', as: :user
    get 'users/update' =>'users#update', as: :update_user
    patch 'users' => 'users#update'
    put 'users' => 'users#update'

  #Sessions
    get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out

    #user_matters
      get 'user_matters/new' => 'user_matters#new', as: :new_user_matter
      post 'user_matters' => 'user_matters#create', as: :create_user_matter
      get 'user_matters' => 'user_matters#index', as: :user_matters
      get 'user_matters/:id' => 'user_matters#show', as: :user_matter
      get 'user_matters/update' =>'user_matters#update', as: :update_user_matter
      patch 'user_matters' => 'user_matters#update'
      put 'user_matters' => 'user_matters#update'

    #matters
      get 'matters/new' => 'matters#new', as: :new_matter
      post 'matters' => 'matters#create', as: :create_matter
      get 'matters' => 'matters#index', as: :matters
      get 'matters/:id' => 'matters#show', as: :matter
      get 'matters/update' =>'matters#update', as: :update_matter
      patch 'matters' => 'matters#update'
      put 'matters' => 'matters#update'

    #documents
      get 'documents/new' => 'documents#new', as: :new_document
      post 'documents' => 'documents#create', as: :create_document
      get 'documents' => 'documents#index', as: :documents
      get 'documents/:id' => 'documents#show', as: :document
      get 'documents/update' =>'documents#update', as: :update_document
      patch 'documents' => 'documents#update'
      put 'documents' => 'documents#update'


    root 'dashboard#hello'
end

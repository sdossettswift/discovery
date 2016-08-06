Rails.application.routes.draw do

  use_doorkeeper


  get 'roles/new'

  get 'roles/create'

  get 'firm/create'

  get 'firm/add'


  #users
    get 'register' => 'users#new', as: :new_user
    post 'users' => 'users#create', as: :create_user
    get 'users' => 'users#index', as: :users
    get 'users/:id' => 'users#show', as: :user
    get 'users/:id/edit' =>'users#edit', as: :edit_user
    patch 'users/:id' => 'users#update'
    put 'users/:id' => 'users#update'

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
      get 'user_matters/:id/update' =>'user_matters#update', as: :update_user_matter
      patch 'user_matters/:id' => 'user_matters#update'
      put 'user_matters/:id' => 'user_matters#update'

    #matters
      get 'matters/new' => 'matters#new', as: :new_matter
      post 'matters' => 'matters#create', as: :create_matter
      get 'matters' => 'matters#index', as: :matters
      get 'matters/:id' => 'matters#show', as: :matter
      get 'matters/:id/edit' =>'matters#edit', as: :edit_matter
      patch 'matters/:id' => 'matters#update'
      put 'matters/:id' => 'matters#update'

    #documents
      get 'documents/new' => 'documents#new', as: :new_document
      post 'documents' => 'documents#create', as: :create_document
      get 'documents' => 'documents#index', as: :documents
      get 'documents/:id' => 'documents#show', as: :document
      get 'documents/:id/edit' =>'documents#edit', as: :edit_document
      patch 'documents/:id' => 'documents#update'
      put 'documents/:id' => 'documents#update'

    #events
    get 'events/timeline' => 'events#timeline', as: :timeline
     post 'events' => 'events#create'
     get 'events/new' => 'events#new', as: :new_event
     get 'events/:id' => 'events#show', as: :event
     get 'events/:id/edit' => 'events#edit', as: :edit_event
     delete 'events/:id' => 'events#delete'
     patch 'events/:id' => 'events#update'

   #api_events
    get 'api/events/new' => 'api/events#new'
    post 'api/events' => 'api/events#create'
    get 'api/events' => 'api/events#index'
    get 'api/events/:id' => 'api/events#show'
    patch 'api/events/:id' => 'api/events#update'
    put 'api/events/:id' => 'api/events#update'
    delete 'api/events/:id' => 'api/events#delete'

    post 'api/registrations' => 'api/registrations#create'

    root 'dashboard#welcome'
    get 'dashboard' => 'dashboard#dashboard', as: :dashboard
end

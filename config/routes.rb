Rails.application.routes.draw do

use_doorkeeper
get 'matters/:id/timeline' => 'matter_events#timeline', as: :matter_timeline
get 'events/timeline' => 'events#timeline', as: :timeline
post 'api/registrations' => 'api/registrations#create'
root 'dashboard#welcome'
get 'dashboard' => 'dashboard#dashboard', as: :dashboard

#Sessions
get 'sign_in' => 'sessions#new', as: :sign_in
post 'sign_in' => 'sessions#create'
delete 'sign_in' => 'sessions#delete', as: :end_session
get 'sign_out' => 'sessions#delete', as: :sign_out

resources :roles
resources :firm
resources :events
resources :user_matters
resources :users

resources :documents do
  resources :client_comments
  resources :attorney_comments
  resources :law_office_comments
end

resources :matters do
  resources :matter_events
  resources :people
end

namespace :api do
  resources :events
  resources :matter_events
  resources :matters do
    resources :matter_events
  end
end


end

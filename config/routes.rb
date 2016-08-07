Rails.application.routes.draw do

use_doorkeeper
get 'matters/:id/timeline' => 'matters#timeline', as: :matter_timeline
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
resources :user_matters
resources :users

resources :documents do
  resources :client_comments
  resources :attorney_comments
  resources :law_office_comments
end

resources :matters do
  resources :events
  resources :people
end

namespace :api do
  resources :matters do
    resources :events
  end
end


end

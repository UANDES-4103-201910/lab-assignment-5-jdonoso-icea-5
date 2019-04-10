Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:destroy,:create,:update]
  resources :events, only: [:destroy,:create,:update]
  resources :event_venues, only: [:destroy,:create,:update]
  resources :tickets, only: [:destroy,:create,:update]
  resources :ticket_types, only: [:destroy,:create,:update]
end


Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:destroy,:create,:update]
  resources :events, only: [:destroy,:create,:update]
  resources :event_venues, only: [:destroy,:create,:update]
  resources :tickets, only: [:destroy,:create,:update]
  resources :ticket_types, only: [:destroy,:create,:update] do
    resources :tickets, only: [:show]
  end

end
Rails.application.routes.draw do
  resources :brands, only: [:index, :show] do
    resources :products, only: [:index, :show]
  end

  resource :basket, only: [:show, :update, :destroy]

  resolve("Basket") { route_for(:basket) }
end
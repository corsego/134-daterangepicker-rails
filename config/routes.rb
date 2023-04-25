Rails.application.routes.draw do
  resources :events, only: [:index]
  root "events#index"
end

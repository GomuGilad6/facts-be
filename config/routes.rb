Rails.application.routes.draw do
  resources :facts, only: [:index]
end

Rails.application.routes.draw do
  resources :compliments, only: [:show]
  root to: 'high_voltage/pages#show', id: 'landing'
end

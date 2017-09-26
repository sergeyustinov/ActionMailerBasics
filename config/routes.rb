Rails.application.routes.draw do
  resources :messages, only: %i[index new create]

  root "messages#new"
end

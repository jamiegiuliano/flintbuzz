Rails.application.routes.draw do
  resources :numbers, only: %i[new create]
  root 'numbers#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

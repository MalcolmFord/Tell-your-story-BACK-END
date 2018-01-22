Rails.application.routes.draw do
  resources :personal_memories
  resources :family_memories
  resources :family_users
  resources :families
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

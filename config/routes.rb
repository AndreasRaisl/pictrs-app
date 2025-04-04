Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :photos, only: [:index, :new, :create, :show]

  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"

  # Defines the root path route ("/")
  root "static_pages#home"
end

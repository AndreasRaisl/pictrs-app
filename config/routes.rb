Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :photos, only: [:index, :new, :create, :show, :destroy]

  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get "/upload", to: "photos#new"

  # Defines the root path route ("/")
  root "static_pages#home"
end

Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#index"

  resources :asset_categories do
    resources :assets
    resources :parks
  end

  resources :parks do
    resources :assets
    resource :asset_categories
    collection do
      match 'search' => 'parks#search', via: [:get, :post], as: :search
    end
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

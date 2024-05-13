Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :session
  resource :registration
  resource :password_reset
  resource :password
  resource :currency
  resource :name
  resource :email
  resources :service do
    resources :reviews
  end
  resources :services, only: [:show]
  resources :vehicle_makes do
    collection do 
      get :fetch_make_models
    end
  end


  # Defines the root path route ("/")
   root "main#index"
   get "services", to: "services#index"
   get "account", to: "account#index"
   get "about", to: "about#index"
   get "privacy", to: "privacy#index"
   get "terms_of_service", to: "terms_of_service#index"
   get "settings", to: "settings#index"
end

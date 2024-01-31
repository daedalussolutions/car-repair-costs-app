Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :session
  resource :registration
  resource :password_reset
  resource :password
  resources :service do
    resources :reviews
  end


  # Defines the root path route ("/")
   root "main#index"
end

Rails.application.routes.draw do
  get 'welcome/index'
  get '/inicio', to: 'welcome#index'
  resources :moedas

  root to: 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

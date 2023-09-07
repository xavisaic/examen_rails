Rails.application.routes.draw do
  get 'search/search'
  resources :dishes
  resources :chefs
  devise_for :users

  resources :chefs do
    resources :dishes, only: [:index, :new, :create]
    member do
      get 'show_dishes' # Esta ruta es para mostrar los platos del chef específico
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "chefs#index"

  get '/search', to: 'search#search', as: 'search'


end

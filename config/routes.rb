Rails.application.routes.draw do
  #get 'log_outdoor_climbs/new'
  #get 'log_outdoor_climbs/create'
  devise_for :users

  root 'pages#index'
  get 'pages/index'

  #get 'log_outdoor_climbs', to: 'log_outdoor_climbs#new'
  #post 'log_outdoor_climbs', to: 'log_outdoor_climbs#create'

  #get '/log_outdoor_climbs/:id', to: 'log_outdoor_climbs#index'


  resources :log_outdoor_climbs, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    collection do
      get :filter
    end
    member do
      delete :destroy_outdoor_climbing
    end
  end

  resources :individual_outdoor_climbs, only: [:index, :new, :create, :update, :destroy]

  resources :images, only: [:new, :show, :create]


end

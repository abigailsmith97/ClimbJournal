Rails.application.routes.draw do
 
  #get 'log_outdoor_climbs/new'
  #get 'log_outdoor_climbs/create'
  devise_for :users

  root 'pages#index'
  get 'pages/index'
  get '/gallery', to: 'pages#gallery'

  get '/climbingmap', to: 'pages#climbingmap'
 
  get '/analytics', to: 'pages#analytics'

  # resources :nameofusers, only: [:new, :create, :edit, :update]

  resources :log_outdoor_climbs, only: [:index, :new, :create, :edit, :update, :destroy, :show, :display] do
    collection do
      get :filter
    end
    member do
      delete :destroy_outdoor_climbing
    end
  end

  resources :individual_outdoor_climbs, only: [:index, :new, :create, :update, :destroy]

  # resources :images, only: [:index, :new, :show, :create, :destroy, :display]

end

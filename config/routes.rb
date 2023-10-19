Rails.application.routes.draw do
  #get 'log_outdoor_climbs/new'
  #get 'log_outdoor_climbs/create'
  devise_for :users

  root 'pages#index'
  get 'pages/index'

  get 'log_outdoor_climbs', to: 'log_outdoor_climbs#new'
  post 'log_outdoor_climbs', to: 'log_outdoor_climbs#create'

end

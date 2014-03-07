RailsFootballManager::Application.routes.draw do
  root 'football_manager#index'

  get '/footballmanager' => 'football_manager#index'
  get '/find' => 'players#find', as: 'find'

  resources :coaches
  resources :players
  resources :teams


end

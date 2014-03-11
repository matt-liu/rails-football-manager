RailsFootballManager::Application.routes.draw do
  resources :games

  root 'football_manager#index'

  get '/footballmanager' => 'football_manager#index'
  get '/find' => 'players#find', as: 'find'

  get '/transfer' => 'transfer#index'

  resources :coaches
  resources :players
  resources :teams
end

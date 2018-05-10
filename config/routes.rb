Rails.application.routes.draw do
  root 'welcome#index'

  get '/dashboard', to: 'dashboard#index'
  get '/profile', to: 'profile#index'

  get '/auth/strava', as: :strava_login
  get '/auth/strava/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end

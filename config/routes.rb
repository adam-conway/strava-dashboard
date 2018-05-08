Rails.application.routes.draw do
  root 'welcome#index'

  get '/auth/strava', as: :strava_login
  get '/auth/strava/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end

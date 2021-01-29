# frozen_string_literal: true

Rails.application.routes.draw do
  resources :dreams
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  get '/chartweek' => 'dreams#chart'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  delete '/delete-all' => 'dreams#destroy_all'
  patch '/change-password' => 'users#changepw'
end

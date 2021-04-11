Rails.application.routes.draw do
  root 'jobs#index'
  post '/subscribers/new', to: 'subscribers#new'
  post '/subscribers/destroy', to: 'subscribers#destroy'
  get '/jobs/new', to: 'jobs#new'
  get '/jobs/:hashid', to: 'jobs#show', as: :hashid
  devise_for :posters
  resources :jobs
end

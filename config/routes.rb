Rails.application.routes.draw do
  root 'jobs#index'
  post '/subscribers/create', to: 'subscribers#create'
  post '/subscribers/destroy', to: 'subscribers#destroy'
  get '/jobs/new', to: 'jobs#new'
  get '/jobs/:hashid', to: 'jobs#show', as: :hashid
  devise_for :posters
  resources :jobs
end

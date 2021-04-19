Rails.application.routes.draw do
  root 'jobs#index'
  post '/subscribers/create', to: 'subscribers#create'
  get '/jobs/new', to: 'jobs#new'
  get '/jobs/:hashid', to: 'jobs#show', as: :hashid
  get '/myjobs', to: 'jobs#poster_jobs'
  devise_for :posters
  resources :jobs
end

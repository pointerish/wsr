Rails.application.routes.draw do
  resources :applicants
  root 'jobs#index'
  post '/subscribers/create', to: 'subscribers#create'
  get '/jobs/new', to: 'jobs#new'
  get '/jobs/:hashid', to: 'jobs#show', as: :hashid
  get '/jobs/:hashid/destroy', to: 'jobs#destroy', as: :destroy
  get '/myjobs', to: 'jobs#poster_jobs'
  devise_for :posters
  resources :jobs
end

Rails.application.routes.draw do
  root 'jobs#index'
  get '/jobs/new', to: 'jobs#new'
  get '/jobs/:hashid', to: 'jobs#show', as: :hashid
  devise_for :posters
  resources :jobs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

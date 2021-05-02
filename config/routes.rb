Rails.application.routes.draw do
  root 'jobs#index'

  get '/:hashid', to: 'job_applicants#show', as: :job_applicant_hashid
  get '/:hashid/edit', to: 'job_applicants#edit', as: :job_applicant_hashid_edit
  get '/:hashid/new', to: 'job_applicants#new', as: :job_applicant_hashid_new
  get '/:hashid/create', to: 'job_applicants#create', as: :job_applicant_hashid_create

  post '/subscribers/create', to: 'subscribers#create'
  get '/jobs/new', to: 'jobs#new'
  get '/jobs/:hashid', to: 'jobs#show', as: :job_hashid
  get '/jobs/:hashid/destroy', to: 'jobs#destroy', as: :destroy
  get '/myjobs', to: 'jobs#poster_jobs'
  devise_for :posters
  devise_for :job_applicants
  resources :jobs
end

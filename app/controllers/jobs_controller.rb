class JobsController < ApplicationController
  before_action :authenticate_poster!, except: [:show, :index]

  def index
    @jobs = Job.all.with_rich_text_description.order(created_at: :desc)
  end

  def show
    @job = Job.find(params[:hashid])
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_poster.jobs.build(job_params)
    if @job.save
      redirect_to root_path
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find params[:id]
    if @job.update(job_params)
      redirect_to @job
    else
      redirect_to @job
    end
  end

  def destroy
  end

  def poster_jobs
    @jobs = current_poster.jobs
  end

  private
    def job_params
      params.require(:job).permit(:title, :location, :description, :salary, :job_type)
    end
end

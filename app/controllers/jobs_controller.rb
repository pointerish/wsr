class JobsController < ApplicationController
  before_action :authenticate_poster!, except: [:show, :index]

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:hashid])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    if @job.save
      redirect_to root_path
    end
  end

  def update
  end

  def destroy
  end

  private
    def job_params
      params.require(:job).permit(:title, :location, :description)
    end
end

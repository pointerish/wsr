class JobApplicantsController < ApplicationController
  before_action :authenticate_job_applicant!

  def show
    @job_applicant = JobApplicant.find_by_hashid params[:job_applicant_hashid]
  end

  def edit
    @job_applicant = JobApplicant.find(params[:id])
  end

  def new
    @job_applicant = JobApplicant.new
  end

  def create
    @job_applicant = JobApplicant.create(job_applicant_params)
    if @job_applicant.save
      redirect_to @jjob_applicantob
    else
      redirect_back fallback_location: @job_applicant
      flash[:alert] = 'Check the details provided! Something is wrong!'
    end
  end

  def update
    @job_applicant = Job.find params[:id]
    if @job_applicant.update(job_params)
      redirect_to @job_applicant
    else
      redirect_back fallback_location: @job_applicant
      flash[:alert] = 'Check the job details provided! Something is wrong!'
    end
  end

  private
    def job_applicant_params
      params.require(:job_applicant).permit(:name, :email, :resume)
    end
end

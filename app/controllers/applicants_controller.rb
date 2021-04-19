class ApplicantsController < ApplicationController
  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.create(application_params)
    if @applicant.save
      redirect_back fallback_location: @job
      flash[:notice] = 'Application submitted!'
    end
  end

  private
    def application_params
      params.require(:application).permit(:name, :email, :resume, :cover_letter)
    end
end

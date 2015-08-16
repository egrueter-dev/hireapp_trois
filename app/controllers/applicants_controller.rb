class ApplicantsController < ApplicationController
  def show
    @applicant = Applicant.find(params[:id].to_i)
  end

  def update
    applicant = Applicant.find(params[:id].to_i)
    #ensure that this saves the record..
    applicant.update(hired?: true)
    redirect_to jobs_path
  end
end

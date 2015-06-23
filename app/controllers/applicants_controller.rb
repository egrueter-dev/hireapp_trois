class ApplicantsController < ApplicationController
  def show
    @applicant = Applicant.find(params[:id].to_i)
  end
end

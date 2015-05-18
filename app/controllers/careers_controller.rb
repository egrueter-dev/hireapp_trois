class CareersController < ApplicationController
  def index
    @suggestions = Job.last(5)
    @industries = Job::INDUSTRY
  end

  def show
    @jobs_by_industry = Job.where(industry: industry_params[:id])
  end

  private

  def industry_params
    params.permit(:id)
  end
end

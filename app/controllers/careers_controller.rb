class CareersController < ApplicationController
  def index
    if params[:title] || params[:location]
      @jobs = Job.search(params[:title], params[:location])
    else
      @jobs = Job.last(5)
    end
    @industries = Job::INDUSTRY
  end

  def show
    #DRY this up by adding a sidebar..

    @industries = Job::INDUSTRY
    @jobs_by_industry = Job.where(industry: industry_params[:id])
  end

  private

  def industry_params
    params.permit(:id)
  end
end

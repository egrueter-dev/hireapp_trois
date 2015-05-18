class CareersController < ApplicationController
  def index
    if params[:search]
      @jobs = Job.search(params[:search]).order("created_at DESC")
    else
      @jobs = Job.last(5)
    end

    @industries = Job::INDUSTRY
  end

  def show
    #DRY this up by adding a sidebar..

    @industries = Job::INDUSTRY

    #sorted in the order they were added? May be a default

    @jobs_by_industry = Job.where(industry: industry_params[:id])
  end

  private

  def industry_params
    params.permit(:id)
  end
end

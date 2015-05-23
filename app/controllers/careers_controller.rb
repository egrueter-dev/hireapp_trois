class CareersController < ApplicationController
  def index
    if params[:title] || params[:location]
      @jobs = Job.search(params[:title], params[:location])
    else
      @jobs = Job.last(5)
    end
    @industries = Job::INDUSTRY
    @jobs_by_location = Job.select(:location).limit(5)
  end

  def show
    @jobs_by_industry = Job.where(industry: industry_params[:id])
  end

  def location
    @jobs_by_location = Job.where(location: industry_params[:location])
  end

  private

  def industry_params
    params.permit(:id, :location)
  end
end

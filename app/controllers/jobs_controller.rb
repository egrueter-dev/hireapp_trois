class JobsController < ApplicationController
  def index
  end

  def new
    @employment_type = Job::EMPLOYMENT_TYPE
    @industry = Job::INDUSTRY
  end

  def create
    Job.create(job_create_params)
    binding.pry
  end

  private

  def job_create_params
    params.require(:job).permit(:title, :employment_type, :industry, :location, :salary, :description)
  end
end

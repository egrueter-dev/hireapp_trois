class JobsController < ApplicationController
  def index
  end

  def show
    @job = Job.find(job_show_params[:id].to_i)
  end

  def new
    @employment_type = Job::EMPLOYMENT_TYPE
    @industry = Job::INDUSTRY
  end

  def create
    Job.create(job_create_params)
  end

  private

  def job_create_params
    params.require(:job).permit(:title, :employment_type, :industry, :location, :salary, :description)
  end

  def job_show_params
    params.permit(:id)
  end
end

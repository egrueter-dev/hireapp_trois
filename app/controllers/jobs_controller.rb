class JobsController < ApplicationController
  def index
    @jobs = Job.where(user_id: current_user.id)
  end

  def show
    @job = Job.find(job_show_params[:id].to_i)
    render 'show_signed_in' if signed_in?
  end

  def new
    @employment_type = Job::EMPLOYMENT_TYPE
    @industry = Job::INDUSTRY
  end

  def create
    new_job = Job.new(job_create_params)
    if new_job.save
      flash[:notice] = "New job created"
      redirect_to jobs_path
    else
      flash[:alert]
      render :new
    end
  end

  private

  def job_create_params
    params[:job][:user_id] = current_user.id
    params.require(:job).permit(:title, :employment_type, :industry, :location, :salary, :description, :user_id)
  end

  def job_show_params
    params.permit(:id)
  end
end

class JobsController < ApplicationController
  def index
    @jobs = Job.where(user_id: current_user.id)
  end

  def show
    @job = Job.find(job_show_params[:id].to_i)
    applicants = @job.applicants.to_a

    ## potential feature - if applicant is hired, indicate rather than removing
    ## from list

    #Need to redo this feature - only one applicant can be hired per job.....
    #This requires a join table "hires"

    if applicants.count > 0
      @applicants = applicants
    end

    render 'show_signed_in' if signed_in?
  end

  def new
    @employment_type = Job::EMPLOYMENT_TYPE
    @industry = Job::INDUSTRY
  end

  def edit
    @job = Job.find(params[:id])
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

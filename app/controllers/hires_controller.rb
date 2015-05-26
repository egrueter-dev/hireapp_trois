class HiresController < ApplicationController
  def index
    render template: "layouts/_internalnav.html.erb"
  end

  def create
    new_applicant = Applicant.new(hire_create_params)
    if new_applicant.save
      flash[:notice] = "You've successfully applied"
      redirect_to '/careers'
    else
      flash[:alert] = new_applicant.errors.full_messages
      render :new
    end
  end

  private

  def hire_create_params
    params.require(:applicant).permit(:name, :email, :phone, :job_id, :resume)
  end
end

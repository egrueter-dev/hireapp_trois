class HiresController < ApplicationController
  def index
    render template: "layouts/_internalnav.html.erb"
  end

  def create
    binding.pry
    Applicant.create(hire_create_params)
  end

  private

  def hire_create_params
    params.require(:applicant).permit(:name, :email, :phone, :job_id)
  end
end

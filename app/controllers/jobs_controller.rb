class JobsController < ApplicationController
  def index
  end

  def new
   @employment_type = Job::EMPLOYMENT_TYPE
   @industry = Job::INDUSTRY
  end

  def create
  end
end

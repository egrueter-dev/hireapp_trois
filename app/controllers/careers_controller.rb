class CareersController < ApplicationController
  def index
    @suggestions= Job.last(5)
    @industries= Job::INDUSTRY
  end
end

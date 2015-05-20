class Job < ActiveRecord::Base
  belongs_to :user

  EMPLOYMENT_TYPE = ["Contract", "Full Time", "Contract to Hire", "Intern", "Part Time", "Temp"]
  INDUSTRY = ["Accounting", "Add The Rest On A Rainy Day"]

  scope :title, -> (title) { where("title like ?", "%#{title}%") }
  scope :location, -> (location) { where("location like ?", "%#{location}%") }

  def self.search(*args)
    if args[1] == ""
      @jobs = Job.title(args[0])
    else
      binding.pry
      @jobs = Job.title(args[0])
      @jobs = @jobs.location(args[1])
    end
    @jobs
  end
end

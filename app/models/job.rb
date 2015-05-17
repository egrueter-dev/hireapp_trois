class Job < ActiveRecord::Base
  belongs_to :user
  
  EMPLOYMENT_TYPE = ["Contract", "Full Time","Contract to Hire", "Intern", "Part Time", "Temp"]
  INDUSTRY = ["Accounting", "Admin", "Add the rest on a rainy day"]
end
